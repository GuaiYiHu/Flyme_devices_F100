.class public Lcom/amigo/internal/widget/AmigoActionBarView;
.super Lcom/amigo/internal/widget/AmigoAbsActionBarView;
.source "AmigoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;,
        Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final CLICK_INTERVAL_TIME:I = 0x1f4

.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final MAX_HOME_SLOP:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mActionBarDoubleClickListener:Landroid/view/View$OnClickListener;

.field private mActivity:Lamigo/app/AmigoActivity;

.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mCallback:Lamigo/app/AmigoActionBar$OnNavigationListener;

.field private mClickable:Z

.field private mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

.field private mCurTime:J

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field private mEmptyView:Landroid/view/View;

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMaxHomeSlop:I

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    invoke-direct/range {p0 .. p2}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mClickable:Z

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCurTime:J

    .line 121
    new-instance v2, Lcom/amigo/internal/widget/AmigoActionBarView$1;

    invoke-direct {v2, p0}, Lcom/amigo/internal/widget/AmigoActionBarView$1;-><init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 133
    new-instance v2, Lcom/amigo/internal/widget/AmigoActionBarView$2;

    invoke-direct {v2, p0}, Lcom/amigo/internal/widget/AmigoActionBarView$2;-><init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v2, Lcom/amigo/internal/widget/AmigoActionBarView$3;

    invoke-direct {v2, p0}, Lcom/amigo/internal/widget/AmigoActionBarView$3;-><init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 167
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setBackgroundResource(I)V

    .line 169
    sget-object v2, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 171
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 172
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 174
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    .line 176
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 177
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 179
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 180
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {v10, v14}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_1
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 194
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 196
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 202
    invoke-virtual {v10, v14}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 223
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 225
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, 0x9030025

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeResId:I

    .line 229
    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeResId:I

    const/4 v3, 0x0

    invoke-virtual {v13, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    .line 231
    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeResId:I

    const/4 v3, 0x0

    invoke-virtual {v13, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    .line 232
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setUp(Z)V

    .line 233
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleStyleRes:I

    .line 238
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleStyleRes:I

    .line 241
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressStyle:I

    .line 242
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressStyle:I

    .line 245
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressBarPadding:I

    .line 246
    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    .line 248
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDisplayOptions(I)V

    .line 251
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 252
    .local v11, "customNavId":I
    if-eqz v11, :cond_4

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v13, v11, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    .line 254
    const/4 v2, 0x0

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    .line 255
    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDisplayOptions(I)V

    .line 258
    :cond_4
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    .line 260
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x90b0051

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 263
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setClickable(Z)V

    .line 265
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setFocusable(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 268
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setImportantForAccessibility(I)V

    .line 271
    :cond_5
    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMaxHomeSlop:I

    .line 274
    return-void

    .line 183
    .end local v11    # "customNavId":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v12

    .line 184
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "ActionBarView"

    const-string v3, "Activity title name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 197
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 198
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActionBar$OnNavigationListener;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCallback:Lamigo/app/AmigoActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/amigo/internal/widget/AmigoActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amigo/internal/widget/AmigoActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/amigo/internal/widget/AmigoActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mBackClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActivity;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1265
    if-eqz p1, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 1267
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 1274
    :goto_0
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1270
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1271
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 1272
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private doActionBarDoubleClick()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1090
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionBarDoubleClickListener:Landroid/view/View$OnClickListener;

    if-nez v4, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1094
    .local v2, "time":J
    iget-wide v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCurTime:J

    sub-long v0, v2, v4

    .line 1096
    .local v0, "gap":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 1097
    iput-wide v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCurTime:J

    .line 1098
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionBarDoubleClickListener:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1100
    :cond_1
    iput-wide v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCurTime:J

    goto :goto_0
.end method

.method private initTitle()V
    .locals 12

    .prologue
    const v11, 0x90b0052

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 513
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_5

    .line 514
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 517
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x903001b

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 524
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x90b0001

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 525
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x90b0002

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 527
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x90b0049

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleUpView:Landroid/view/View;

    .line 528
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mEmptyView:Landroid/view/View;

    .line 532
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleUpView:Landroid/view/View;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleStyleRes:I

    if-eqz v5, :cond_0

    .line 541
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 543
    :cond_0
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 544
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_1
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleStyleRes:I

    if-eqz v5, :cond_2

    .line 548
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 550
    :cond_2
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 551
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    :cond_3
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    move v1, v6

    .line 556
    .local v1, "homeAsUp":Z
    :goto_0
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    move v3, v6

    .line 557
    .local v3, "showHome":Z
    :goto_1
    if-nez v3, :cond_9

    move v4, v6

    .line 560
    .local v4, "showTitleUp":Z
    :goto_2
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_a

    move v5, v7

    :goto_3
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 563
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_c

    if-nez v1, :cond_c

    move v5, v7

    :goto_4
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :cond_4
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    if-eqz v4, :cond_d

    move v5, v6

    :goto_5
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 572
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 575
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "homeAsUp":Z
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "showHome":Z
    .end local v4    # "showTitleUp":Z
    :cond_5
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 577
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 579
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    :cond_6
    return-void

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_7
    move v1, v7

    .line 555
    goto :goto_0

    .restart local v1    # "homeAsUp":Z
    :cond_8
    move v3, v7

    .line 556
    goto :goto_1

    .restart local v3    # "showHome":Z
    :cond_9
    move v4, v7

    .line 557
    goto :goto_2

    .restart local v4    # "showTitleUp":Z
    :cond_a
    move v5, v8

    .line 560
    goto :goto_3

    :cond_b
    move v5, v8

    goto :goto_3

    .restart local v0    # "emptyView":Landroid/view/View;
    :cond_c
    move v5, v8

    .line 563
    goto :goto_4

    :cond_d
    move v5, v7

    .line 571
    goto :goto_5

    :cond_e
    move v6, v7

    .line 572
    goto :goto_6
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1316
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1317
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1318
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 1322
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1324
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 1325
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1327
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1319
    goto :goto_0

    .line 1322
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public changeColors()V
    .locals 2

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->changeColor()V

    .line 1770
    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1284
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 1287
    :cond_0
    return-void

    .line 1282
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Lamigo/app/AmigoActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Lamigo/app/AmigoActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 590
    new-instance v0, Lamigo/app/AmigoActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lamigo/app/AmigoActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 598
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 0

    .prologue
    .line 1183
    return-void
.end method

.method public initProgress()V
    .locals 0

    .prologue
    .line 1175
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    .line 1107
    invoke-super {p0, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1118
    iput-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 1119
    iput-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 1120
    iput-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleUpView:Landroid/view/View;

    .line 1121
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 1122
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    .line 1124
    :cond_0
    iput-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1125
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 1126
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->initTitle()V

    .line 1129
    :cond_1
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_3

    .line 1130
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1131
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    .line 1132
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1133
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1135
    :cond_2
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setAllowCollapse(Z)V

    .line 1139
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1140
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeResId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    .line 1141
    .local v3, "tempHomeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    if-eqz v3, :cond_4

    .line 1142
    const v5, 0x90b0051

    invoke-virtual {v3, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1143
    .local v4, "tempIconView":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 1144
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    .line 1145
    .local v0, "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIconViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    .end local v0    # "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .end local v4    # "tempIconView":Landroid/widget/ImageView;
    :cond_4
    return-void

    .line 1144
    .restart local v4    # "tempIconView":Landroid/widget/ImageView;
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1155
    invoke-super {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onDetachedFromWindow()V

    .line 1156
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1157
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 1159
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 1161
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onFinishInflate()V

    .line 499
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 501
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 503
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 504
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 505
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 510
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 44
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 884
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingBottom()I

    move-result v5

    sub-int v7, v3, v5

    .line 886
    .local v7, "contentHeight":I
    if-gtz v7, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->isLayoutRtl()Z

    move-result v8

    .line 892
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    const/16 v25, 0x1

    .line 893
    .local v25, "direction":I
    :goto_1
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingLeft()I

    move-result v33

    .line 896
    .local v33, "menuStart":I
    :goto_2
    if-eqz v8, :cond_d

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingRight()I

    move-result v5

    sub-int v11, v3, v5

    .line 897
    .local v11, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingTop()I

    move-result v6

    .line 899
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    .line 900
    .local v4, "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    :goto_4
    const/16 v35, 0x0

    .line 901
    .local v35, "needsTouchDelegate":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMaxHomeSlop:I

    move/from16 v30, v0

    .line 902
    .local v30, "homeSlop":I
    const/16 v29, 0x0

    .line 903
    .local v29, "homeRight":I
    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 904
    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getStartOffset()I

    move-result v39

    .line 905
    .local v39, "startOffset":I
    move/from16 v0, v39

    invoke-static {v11, v0, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v11, v3

    .line 907
    move/from16 v0, v39

    invoke-static {v11, v0, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    if-ne v4, v3, :cond_f

    const/16 v35, 0x1

    .line 909
    :goto_5
    move/from16 v29, v11

    .line 912
    .end local v39    # "startOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_10

    const/16 v38, 0x1

    .line 915
    .local v38, "showTitle":Z
    :goto_6
    if-eqz v38, :cond_2

    .line 916
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v11, v3

    .line 919
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 943
    .end local v38    # "showTitle":Z
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_1f

    .line 944
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-nez v8, :cond_13

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v12, p0

    move/from16 v14, v33

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v25

    add-int v14, v33, v3

    .line 948
    .end local v33    # "menuStart":I
    .local v14, "menuStart":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    .line 950
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_14

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v12, p0

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v25

    add-int/2addr v14, v3

    .line 954
    :cond_4
    const/16 v23, 0x0

    .line 955
    .local v23, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_15

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 961
    :cond_5
    :goto_b
    if-eqz v23, :cond_9

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getLayoutDirection()I

    move-result v31

    .line 963
    .local v31, "layoutDirection":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    .line 964
    .local v32, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v32

    instance-of v3, v0, Lamigo/app/AmigoActionBar$LayoutParams;

    if-eqz v3, :cond_16

    check-cast v32, Lamigo/app/AmigoActionBar$LayoutParams;

    .end local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v18, v32

    .line 966
    .local v18, "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    :goto_c
    if-eqz v18, :cond_17

    move-object/from16 v0, v18

    iget v0, v0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    move/from16 v26, v0

    .line 967
    .local v26, "gravity":I
    :goto_d
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    .line 969
    .local v34, "navWidth":I
    const/16 v40, 0x0

    .line 970
    .local v40, "topMargin":I
    const/16 v19, 0x0

    .line 971
    .local v19, "bottomMargin":I
    if-eqz v18, :cond_6

    .line 972
    invoke-virtual/range {v18 .. v18}, Lamigo/app/AmigoActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v11, v3, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    .line 973
    invoke-virtual/range {v18 .. v18}, Lamigo/app/AmigoActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v25

    add-int/2addr v14, v3

    .line 974
    move-object/from16 v0, v18

    iget v0, v0, Lamigo/app/AmigoActionBar$LayoutParams;->topMargin:I

    move/from16 v40, v0

    .line 975
    move-object/from16 v0, v18

    iget v0, v0, Lamigo/app/AmigoActionBar$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    .line 978
    :cond_6
    const v3, 0x800007

    and-int v28, v26, v3

    .line 980
    .local v28, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_1b

    .line 981
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLeft:I

    sub-int/2addr v3, v5

    sub-int v3, v3, v34

    div-int/lit8 v21, v3, 0x2

    .line 982
    .local v21, "centeredLeft":I
    if-eqz v8, :cond_19

    .line 983
    add-int v22, v21, v34

    .line 984
    .local v22, "centeredStart":I
    move/from16 v20, v21

    .line 985
    .local v20, "centeredEnd":I
    move/from16 v0, v22

    if-le v0, v11, :cond_18

    .line 986
    const/16 v28, 0x5

    .line 1003
    .end local v20    # "centeredEnd":I
    .end local v21    # "centeredLeft":I
    .end local v22    # "centeredStart":I
    :cond_7
    :goto_e
    const/16 v42, 0x0

    .line 1004
    .local v42, "xpos":I
    move/from16 v0, v28

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1016
    :goto_f
    :pswitch_1
    and-int/lit8 v41, v26, 0x70

    .line 1018
    .local v41, "vgravity":I
    if-nez v26, :cond_8

    .line 1019
    const/16 v41, 0x10

    .line 1022
    :cond_8
    const/16 v43, 0x0

    .line 1023
    .local v43, "ypos":I
    sparse-switch v41, :sswitch_data_0

    .line 1037
    :goto_10
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1038
    .local v24, "customWidth":I
    add-int v3, v42, v24

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v43

    move-object/from16 v0, v23

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 1040
    sub-int v3, v42, v29

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1041
    move/from16 v0, v24

    invoke-static {v11, v0, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    .line 1044
    .end local v18    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    .end local v19    # "bottomMargin":I
    .end local v24    # "customWidth":I
    .end local v26    # "gravity":I
    .end local v28    # "hgravity":I
    .end local v31    # "layoutDirection":I
    .end local v34    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_a

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v27, v3, 0x2

    .line 1047
    .local v27, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressBarPadding:I

    move/from16 v0, v27

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v27

    invoke-virtual {v3, v5, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1051
    .end local v27    # "halfProgressHeight":I
    :cond_a
    if-eqz v35, :cond_1e

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getTop()I

    move-result v9

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getRight()I

    move-result v10

    add-int v10, v10, v30

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getBottom()I

    move-result v12

    invoke-virtual {v3, v5, v9, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1054
    new-instance v3, Landroid/view/TouchDelegate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v3, v5, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 892
    .end local v4    # "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .end local v6    # "y":I
    .end local v11    # "x":I
    .end local v14    # "menuStart":I
    .end local v23    # "customView":Landroid/view/View;
    .end local v25    # "direction":I
    .end local v29    # "homeRight":I
    .end local v30    # "homeSlop":I
    .end local v35    # "needsTouchDelegate":Z
    :cond_b
    const/16 v25, -0x1

    goto/16 :goto_1

    .line 893
    .restart local v25    # "direction":I
    :cond_c
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingRight()I

    move-result v5

    sub-int v33, v3, v5

    goto/16 :goto_2

    .line 896
    .restart local v33    # "menuStart":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingLeft()I

    move-result v11

    goto/16 :goto_3

    .line 899
    .restart local v6    # "y":I
    .restart local v11    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    goto/16 :goto_4

    .line 908
    .restart local v4    # "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .restart local v29    # "homeRight":I
    .restart local v30    # "homeSlop":I
    .restart local v35    # "needsTouchDelegate":Z
    .restart local v39    # "startOffset":I
    :cond_f
    const/16 v35, 0x0

    goto/16 :goto_5

    .line 913
    .end local v39    # "startOffset":I
    :cond_10
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 923
    .restart local v38    # "showTitle":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 924
    if-eqz v38, :cond_11

    .line 925
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    invoke-static {v11, v3, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    .line 927
    :cond_11
    sub-int v3, v11, v29

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 928
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v11, v3

    .line 929
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    invoke-static {v11, v3, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    goto/16 :goto_7

    .line 933
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v3, :cond_3

    .line 934
    if-eqz v38, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    invoke-static {v11, v3, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    .line 935
    :cond_12
    sub-int v3, v11, v29

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 936
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/amigo/internal/widget/AmigoActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v11, v3

    .line 937
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    invoke-static {v11, v3, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->next(IIZ)I

    move-result v11

    goto/16 :goto_7

    .line 944
    .end local v38    # "showTitle":Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 950
    .end local v33    # "menuStart":I
    .restart local v14    # "menuStart":I
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 957
    .restart local v23    # "customView":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v23, v0

    goto/16 :goto_b

    .line 964
    .restart local v31    # "layoutDirection":I
    .restart local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 966
    .end local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    :cond_17
    const v26, 0x800013

    goto/16 :goto_d

    .line 987
    .restart local v19    # "bottomMargin":I
    .restart local v20    # "centeredEnd":I
    .restart local v21    # "centeredLeft":I
    .restart local v22    # "centeredStart":I
    .restart local v26    # "gravity":I
    .restart local v28    # "hgravity":I
    .restart local v34    # "navWidth":I
    .restart local v40    # "topMargin":I
    :cond_18
    move/from16 v0, v20

    if-ge v0, v14, :cond_7

    .line 988
    const/16 v28, 0x3

    goto/16 :goto_e

    .line 991
    .end local v20    # "centeredEnd":I
    .end local v22    # "centeredStart":I
    :cond_19
    move/from16 v22, v21

    .line 992
    .restart local v22    # "centeredStart":I
    add-int v20, v21, v34

    .line 993
    .restart local v20    # "centeredEnd":I
    move/from16 v0, v22

    if-ge v0, v11, :cond_1a

    .line 994
    const/16 v28, 0x3

    goto/16 :goto_e

    .line 995
    :cond_1a
    move/from16 v0, v20

    if-le v0, v14, :cond_7

    .line 996
    const/16 v28, 0x5

    goto/16 :goto_e

    .line 999
    .end local v20    # "centeredEnd":I
    .end local v21    # "centeredLeft":I
    .end local v22    # "centeredStart":I
    :cond_1b
    if-nez v26, :cond_7

    .line 1000
    const v28, 0x800003

    goto/16 :goto_e

    .line 1006
    .restart local v42    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLeft:I

    sub-int/2addr v3, v5

    sub-int v3, v3, v34

    div-int/lit8 v42, v3, 0x2

    .line 1007
    goto/16 :goto_f

    .line 1009
    :pswitch_5
    if-eqz v8, :cond_1c

    move/from16 v42, v14

    .line 1010
    :goto_11
    goto/16 :goto_f

    :cond_1c
    move/from16 v42, v11

    .line 1009
    goto :goto_11

    .line 1012
    :pswitch_6
    if-eqz v8, :cond_1d

    sub-int v42, v11, v34

    :goto_12
    goto/16 :goto_f

    :cond_1d
    sub-int v42, v14, v34

    goto :goto_12

    .line 1025
    .restart local v41    # "vgravity":I
    .restart local v43    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingTop()I

    move-result v37

    .line 1026
    .local v37, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTop:I

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingBottom()I

    move-result v5

    sub-int v36, v3, v5

    .line 1027
    .local v36, "paddedBottom":I
    sub-int v3, v36, v37

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v43, v3, 0x2

    .line 1028
    goto/16 :goto_10

    .line 1030
    .end local v36    # "paddedBottom":I
    .end local v37    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingTop()I

    move-result v3

    add-int v43, v3, v40

    .line 1031
    goto/16 :goto_10

    .line 1033
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v43, v3, v19

    goto/16 :goto_10

    .line 1056
    .end local v18    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    .end local v19    # "bottomMargin":I
    .end local v26    # "gravity":I
    .end local v28    # "hgravity":I
    .end local v31    # "layoutDirection":I
    .end local v34    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .end local v14    # "menuStart":I
    .end local v23    # "customView":Landroid/view/View;
    .restart local v33    # "menuStart":I
    :cond_1f
    move/from16 v14, v33

    .end local v33    # "menuStart":I
    .restart local v14    # "menuStart":I
    goto/16 :goto_9

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1004
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 45
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getChildCount()I

    move-result v7

    .line 682
    .local v7, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIsCollapsable:Z

    move/from16 v41, v0

    if-eqz v41, :cond_6

    .line 683
    const/16 v39, 0x0

    .line 684
    .local v39, "visibleChildren":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    if-ge v0, v7, :cond_4

    .line 685
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 686
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    if-ne v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v41

    if-eqz v41, :cond_2

    .line 689
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    if-eq v0, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    if-ne v0, v6, :cond_3

    .line 690
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 691
    add-int/lit8 v39, v39, 0x1

    .line 684
    :cond_2
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 694
    :cond_3
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    .line 699
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    if-nez v39, :cond_6

    .line 701
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setMeasuredDimension(II)V

    .line 702
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/AmigoActionBarView;->mIsCollapsed:Z

    .line 880
    .end local v23    # "i":I
    .end local v39    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 706
    :cond_6
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/AmigoActionBarView;->mIsCollapsed:Z

    .line 708
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v40

    .line 709
    .local v40, "widthMode":I
    const/high16 v41, 0x40000000    # 2.0f

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    .line 710
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " can only be used "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 714
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 715
    .local v17, "heightMode":I
    const/high16 v41, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v41

    if-eq v0, v1, :cond_8

    .line 716
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " can only be used "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 720
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 722
    .local v9, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-ltz v41, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    move/from16 v28, v0

    .line 725
    .local v28, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingTop()I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingBottom()I

    move-result v42

    add-int v38, v41, v42

    .line 726
    .local v38, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingLeft()I

    move-result v31

    .line 727
    .local v31, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getPaddingRight()I

    move-result v32

    .line 728
    .local v32, "paddingRight":I
    sub-int v16, v28, v38

    .line 729
    .local v16, "height":I
    const/high16 v41, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 730
    .local v8, "childSpecHeight":I
    const/high16 v41, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 732
    .local v15, "exactHeightSpec":I
    sub-int v41, v9, v31

    sub-int v5, v41, v32

    .line 733
    .local v5, "availableWidth":I
    div-int/lit8 v25, v5, 0x2

    .line 734
    .local v25, "leftOfCenter":I
    move/from16 v33, v25

    .line 736
    .local v33, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-object/from16 v19, v0

    .line 738
    .local v19, "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_9

    .line 739
    invoke-virtual/range {v19 .. v19}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    .line 741
    .local v27, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    if-gez v41, :cond_16

    .line 742
    const/high16 v41, -0x80000000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 746
    .local v21, "homeWidthSpec":I
    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->measure(II)V

    .line 747
    invoke-virtual/range {v19 .. v19}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getMeasuredWidth()I

    move-result v41

    invoke-virtual/range {v19 .. v19}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getStartOffset()I

    move-result v42

    add-int v20, v41, v42

    .line 748
    .local v20, "homeWidth":I
    const/16 v41, 0x0

    sub-int v42, v5, v20

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 749
    const/16 v41, 0x0

    sub-int v42, v5, v20

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 752
    .end local v20    # "homeWidth":I
    .end local v21    # "homeWidthSpec":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    if-eqz v41, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v5, v15, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 754
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v33, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 757
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    if-eqz v41, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_b

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 761
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v33, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 765
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    if-eqz v41, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x8

    if-eqz v41, :cond_17

    const/16 v34, 0x1

    .line 768
    .local v34, "showTitle":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-nez v41, :cond_c

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_0

    .line 799
    :cond_c
    :goto_7
    const/4 v14, 0x0

    .line 800
    .local v14, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1a

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 807
    :cond_d
    :goto_8
    if-eqz v14, :cond_11

    .line 808
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    .line 809
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v27

    instance-of v0, v0, Lamigo/app/AmigoActionBar$LayoutParams;

    move/from16 v41, v0

    if-eqz v41, :cond_1b

    move-object/from16 v41, v27

    check-cast v41, Lamigo/app/AmigoActionBar$LayoutParams;

    move-object/from16 v4, v41

    .line 812
    .local v4, "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    :goto_9
    const/16 v22, 0x0

    .line 813
    .local v22, "horizontalMargin":I
    const/16 v37, 0x0

    .line 814
    .local v37, "verticalMargin":I
    if-eqz v4, :cond_e

    .line 815
    iget v0, v4, Lamigo/app/AmigoActionBar$LayoutParams;->leftMargin:I

    move/from16 v41, v0

    iget v0, v4, Lamigo/app/AmigoActionBar$LayoutParams;->rightMargin:I

    move/from16 v42, v0

    add-int v22, v41, v42

    .line 816
    iget v0, v4, Lamigo/app/AmigoActionBar$LayoutParams;->topMargin:I

    move/from16 v41, v0

    iget v0, v4, Lamigo/app/AmigoActionBar$LayoutParams;->bottomMargin:I

    move/from16 v42, v0

    add-int v37, v41, v42

    .line 822
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-gtz v41, :cond_1c

    .line 823
    const/high16 v11, -0x80000000

    .line 828
    .local v11, "customNavHeightMode":I
    :goto_a
    const/16 v41, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v42, v0

    if-ltz v42, :cond_f

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .end local v16    # "height":I
    :cond_f
    sub-int v42, v16, v37

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 831
    .local v10, "customNavHeight":I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/16 v42, -0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_1e

    const/high16 v13, 0x40000000    # 2.0f

    .line 833
    .local v13, "customNavWidthMode":I
    :goto_b
    const/16 v42, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    if-ltz v41, :cond_1f

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v41

    :goto_c
    sub-int v41, v41, v22

    move/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 836
    .local v12, "customNavWidth":I
    if-eqz v4, :cond_20

    iget v0, v4, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    move/from16 v41, v0

    :goto_d
    and-int/lit8 v18, v41, 0x7

    .line 841
    .local v18, "hgrav":I
    const/16 v41, 0x1

    move/from16 v0, v18

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    .line 842
    move/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v41

    mul-int/lit8 v12, v41, 0x2

    .line 845
    :cond_10
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 848
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v41

    add-int v41, v41, v22

    sub-int v5, v5, v41

    .line 851
    .end local v4    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    .end local v10    # "customNavHeight":I
    .end local v11    # "customNavHeightMode":I
    .end local v12    # "customNavWidth":I
    .end local v13    # "customNavWidthMode":I
    .end local v18    # "hgrav":I
    .end local v22    # "horizontalMargin":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v37    # "verticalMargin":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-nez v41, :cond_12

    if-eqz v34, :cond_12

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    move/from16 v42, v0

    const/high16 v43, 0x40000000    # 2.0f

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 854
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v25, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 857
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-gtz v41, :cond_23

    .line 858
    const/16 v29, 0x0

    .line 859
    .local v29, "measuredHeight":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_e
    move/from16 v0, v23

    if-ge v0, v7, :cond_21

    .line 860
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 861
    .local v36, "v":Landroid/view/View;
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v41

    add-int v30, v41, v38

    .line 862
    .local v30, "paddedViewHeight":I
    move/from16 v0, v30

    move/from16 v1, v29

    if-le v0, v1, :cond_13

    .line 863
    move/from16 v29, v30

    .line 859
    :cond_13
    add-int/lit8 v23, v23, 0x1

    goto :goto_e

    .line 722
    .end local v5    # "availableWidth":I
    .end local v8    # "childSpecHeight":I
    .end local v14    # "customView":Landroid/view/View;
    .end local v15    # "exactHeightSpec":I
    .end local v19    # "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .end local v23    # "i":I
    .end local v25    # "leftOfCenter":I
    .end local v28    # "maxHeight":I
    .end local v29    # "measuredHeight":I
    .end local v30    # "paddedViewHeight":I
    .end local v31    # "paddingLeft":I
    .end local v32    # "paddingRight":I
    .end local v33    # "rightOfCenter":I
    .end local v34    # "showTitle":Z
    .end local v36    # "v":Landroid/view/View;
    .end local v38    # "verticalPadding":I
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v28

    goto/16 :goto_3

    .line 736
    .restart local v5    # "availableWidth":I
    .restart local v8    # "childSpecHeight":I
    .restart local v15    # "exactHeightSpec":I
    .restart local v16    # "height":I
    .restart local v25    # "leftOfCenter":I
    .restart local v28    # "maxHeight":I
    .restart local v31    # "paddingLeft":I
    .restart local v32    # "paddingRight":I
    .restart local v33    # "rightOfCenter":I
    .restart local v38    # "verticalPadding":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-object/from16 v19, v0

    goto/16 :goto_4

    .line 744
    .restart local v19    # "homeLayout":Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/high16 v42, 0x40000000    # 2.0f

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .restart local v21    # "homeWidthSpec":I
    goto/16 :goto_5

    .line 765
    .end local v21    # "homeWidthSpec":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 771
    .restart local v34    # "showTitle":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    if-eqz v41, :cond_c

    .line 772
    if-eqz v34, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    move/from16 v41, v0

    mul-int/lit8 v24, v41, 0x2

    .line 773
    .local v24, "itemPaddingSize":I
    :goto_f
    const/16 v41, 0x0

    sub-int v42, v5, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 774
    const/16 v41, 0x0

    sub-int v42, v25, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/high16 v42, -0x80000000

    move/from16 v0, v42

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/high16 v43, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v43

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Landroid/widget/LinearLayout;->measure(II)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v26

    .line 779
    .local v26, "listNavWidth":I
    const/16 v41, 0x0

    sub-int v42, v5, v26

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 780
    const/16 v41, 0x0

    sub-int v42, v25, v26

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 781
    goto/16 :goto_7

    .line 772
    .end local v24    # "itemPaddingSize":I
    .end local v26    # "listNavWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    move/from16 v24, v0

    goto :goto_f

    .line 784
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_c

    .line 785
    if-eqz v34, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    move/from16 v41, v0

    mul-int/lit8 v24, v41, 0x2

    .line 786
    .restart local v24    # "itemPaddingSize":I
    :goto_10
    const/16 v41, 0x0

    sub-int v42, v5, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 787
    const/16 v41, 0x0

    sub-int v42, v25, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-object/from16 v41, v0

    const/high16 v42, -0x80000000

    move/from16 v0, v42

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/high16 v43, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v43

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Lcom/amigo/internal/widget/AmigoTabContainerView;->measure(II)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getMeasuredWidth()I

    move-result v35

    .line 792
    .local v35, "tabWidth":I
    const/16 v41, 0x0

    sub-int v42, v5, v35

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 793
    const/16 v41, 0x0

    sub-int v42, v25, v35

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v25

    goto/16 :goto_7

    .line 785
    .end local v24    # "itemPaddingSize":I
    .end local v35    # "tabWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mItemPadding:I

    move/from16 v24, v0

    goto :goto_10

    .line 802
    .restart local v14    # "customView":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x10

    if-eqz v41, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_d

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 809
    .restart local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 825
    .restart local v4    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    .restart local v22    # "horizontalMargin":I
    .restart local v37    # "verticalMargin":I
    :cond_1c
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    const/16 v42, -0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_1d

    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v11    # "customNavHeightMode":I
    :cond_1d
    const/high16 v11, -0x80000000

    goto :goto_11

    .line 831
    .end local v16    # "height":I
    .restart local v10    # "customNavHeight":I
    .restart local v11    # "customNavHeightMode":I
    :cond_1e
    const/high16 v13, -0x80000000

    goto/16 :goto_b

    .restart local v13    # "customNavWidthMode":I
    :cond_1f
    move/from16 v41, v5

    .line 833
    goto/16 :goto_c

    .line 836
    .restart local v12    # "customNavWidth":I
    :cond_20
    const v41, 0x800013

    goto/16 :goto_d

    .line 866
    .end local v4    # "ablp":Lamigo/app/AmigoActionBar$LayoutParams;
    .end local v10    # "customNavHeight":I
    .end local v11    # "customNavHeightMode":I
    .end local v12    # "customNavWidth":I
    .end local v13    # "customNavWidthMode":I
    .end local v22    # "horizontalMargin":I
    .end local v27    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v37    # "verticalMargin":I
    .restart local v23    # "i":I
    .restart local v29    # "measuredHeight":I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setMeasuredDimension(II)V

    .line 871
    .end local v23    # "i":I
    .end local v29    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_22

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-object/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getMeasuredHeight()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setContentHeight(I)V

    .line 875
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_5

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mProgressBarPadding:I

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    sub-int v42, v9, v42

    const/high16 v43, 0x40000000    # 2.0f

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getMeasuredHeight()I

    move-result v43

    const/high16 v44, -0x80000000

    invoke-static/range {v43 .. v44}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 868
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 618
    move-object v1, p1

    check-cast v1, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;

    .line 620
    .local v1, "state":Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 622
    iget v2, v1, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 625
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 630
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->postShowOverflowMenu()V

    .line 633
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 604
    invoke-super {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 605
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 607
    .local v0, "state":Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->expandedMenuItemId:I

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/amigo/internal/widget/AmigoActionBarView$SavedState;->isOverflowOpen:Z

    .line 613
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1074
    const-string v0, "AmigoActionBarView_onTouchEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getAction()-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->doActionBarDoubleClick()V

    .line 1081
    :cond_0
    invoke-super {p0, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Lamigo/app/AmigoActivity;)V
    .locals 0
    .param p1, "activity"    # Lamigo/app/AmigoActivity;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;

    .line 1698
    return-void
.end method

.method public setCallback(Lamigo/app/AmigoActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "callback"    # Lamigo/app/AmigoActionBar$OnNavigationListener;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCallback:Lamigo/app/AmigoActionBar$OnNavigationListener;

    .line 1262
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setClickable(Z)V

    .line 1064
    :cond_0
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .param p1, "collapsable"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIsCollapsable:Z

    .line 672
    return-void
.end method

.method public setContextView(Lcom/amigo/internal/widget/AmigoActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/amigo/internal/widget/AmigoActionBarContextView;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    .line 585
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1290
    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1291
    .local v0, "showCustom":Z
    :goto_0
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    .line 1294
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1295
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 1298
    :cond_1
    return-void

    .line 1290
    .end local v0    # "showCustom":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 314
    iget v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_7

    .line 315
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    .line 317
    and-int/lit8 v9, v0, 0x1f

    if-eqz v9, :cond_14

    .line 318
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_8

    move v4, v8

    .line 319
    .local v4, "showHome":Z
    :goto_1
    if-eqz v4, :cond_9

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_9

    move v5, v6

    .line 320
    .local v5, "vis":I
    :goto_2
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setVisibility(I)V

    .line 322
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 323
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_a

    move v3, v8

    .line 324
    .local v3, "setUp":Z
    :goto_3
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v9, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setUp(Z)V

    .line 330
    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {p0, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->setHomeButtonEnabled(Z)V

    .line 335
    .end local v3    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 336
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_b

    move v2, v8

    .line 337
    .local v2, "logoVis":Z
    :goto_4
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    if-eqz v2, :cond_c

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v10, v9}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 340
    .end local v2    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 341
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_d

    .line 342
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->initTitle()V

    .line 348
    :cond_2
    :goto_6
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x6

    if-eqz v9, :cond_5

    .line 350
    iget v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    move v1, v8

    .line 351
    .local v1, "homeAsUp":Z
    :goto_7
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_10

    if-eqz v1, :cond_f

    move v9, v6

    :goto_8
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mEmptyView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 353
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mEmptyView:Landroid/view/View;

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_4
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_11

    if-eqz v1, :cond_11

    move v7, v8

    :goto_9
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 356
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_12

    if-eqz v1, :cond_12

    :goto_a
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 359
    .end local v1    # "homeAsUp":Z
    :cond_5
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 360
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_13

    .line 361
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 367
    :cond_6
    :goto_b
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->requestLayout()V

    .line 373
    .end local v4    # "showHome":Z
    .end local v5    # "vis":I
    :goto_c
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v7}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_15

    .line 374
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 386
    :goto_d
    return-void

    .line 314
    .end local v0    # "flagsChanged":I
    :cond_7
    iget v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_8
    move v4, v6

    .line 318
    goto/16 :goto_1

    .restart local v4    # "showHome":Z
    :cond_9
    move v5, v7

    .line 319
    goto/16 :goto_2

    .restart local v5    # "vis":I
    :cond_a
    move v3, v6

    .line 323
    goto/16 :goto_3

    :cond_b
    move v2, v6

    .line 336
    goto/16 :goto_4

    .line 337
    .restart local v2    # "logoVis":Z
    :cond_c
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 344
    .end local v2    # "logoVis":Z
    :cond_d
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    move v1, v6

    .line 350
    goto :goto_7

    .restart local v1    # "homeAsUp":Z
    :cond_f
    move v9, v7

    .line 351
    goto :goto_8

    :cond_10
    move v9, v7

    goto :goto_8

    :cond_11
    move v7, v6

    .line 355
    goto :goto_9

    :cond_12
    move v8, v6

    .line 356
    goto :goto_a

    .line 363
    .end local v1    # "homeAsUp":Z
    :cond_13
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_b

    .line 369
    .end local v4    # "showHome":Z
    .end local v5    # "vis":I
    :cond_14
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->invalidate()V

    goto :goto_c

    .line 377
    :cond_15
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 378
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_16

    .line 379
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9090009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 382
    :cond_16
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x909000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 458
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 461
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 469
    return-void
.end method

.method public setEmbeddedTabView(Lcom/amigo/internal/widget/AmigoTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 1236
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    .line 1239
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    .line 1240
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    .line 1241
    iget-boolean v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 1253
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1254
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1255
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1256
    invoke-virtual {p1, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setAllowCollapse(Z)V

    .line 1258
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 1240
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setFocusable(Z)V

    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 288
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x909000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 390
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 397
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 405
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1708
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    .line 1709
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1710
    .local v8, "oldParent":Landroid/view/ViewGroup;
    if-eqz v8, :cond_0

    .line 1711
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1715
    .end local v8    # "oldParent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1716
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1717
    .local v7, "menuView":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 1718
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1720
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1717
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    const v4, 0x9030038

    .line 1727
    .local v4, "layoutId":I
    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1728
    .local v6, "menuIv":Landroid/widget/ImageView;
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1729
    .local v3, "itemIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1730
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1731
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    instance-of v9, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v9, :cond_3

    .line 1732
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1734
    :cond_3
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1737
    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1738
    new-instance v9, Lcom/amigo/internal/widget/AmigoActionBarView$4;

    invoke-direct {v9, p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$4;-><init>(Lcom/amigo/internal/widget/AmigoActionBarView;Landroid/view/MenuItem;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    new-instance v9, Lcom/amigo/internal/widget/AmigoActionBarView$5;

    invoke-direct {v9, p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$5;-><init>(Lcom/amigo/internal/widget/AmigoActionBarView;Landroid/view/MenuItem;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1751
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContentHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContentHeight()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 1758
    .end local v3    # "itemIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "layoutId":I
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    .end local v6    # "menuIv":Landroid/widget/ImageView;
    :cond_5
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getContentHeight()I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v9}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1760
    iput-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mMenuView:Landroid/view/ViewGroup;

    .line 1762
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 415
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    .line 416
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 417
    packed-switch v0, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 451
    :cond_1
    :goto_1
    iput p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I

    .line 452
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarView;->requestLayout()V

    .line 454
    :cond_2
    return-void

    .line 424
    :pswitch_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 432
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 433
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 434
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 437
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 440
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 442
    :cond_4
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 443
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 446
    :pswitch_2
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 429
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnActionBarDoubleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mActionBarDoubleClickListener:Landroid/view/View$OnClickListener;

    .line 1087
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 1704
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0
    .param p1, "splitActionBar"    # Z

    .prologue
    .line 1224
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1334
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 1335
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 1341
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1343
    .end local v0    # "visible":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1337
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1338
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 1341
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mUserTitle:Z

    .line 1306
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 1307
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 1152
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 1311
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 1313
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x0

    return v0
.end method
