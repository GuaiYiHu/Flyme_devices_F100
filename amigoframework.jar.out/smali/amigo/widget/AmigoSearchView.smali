.class public Lamigo/widget/AmigoSearchView;
.super Landroid/widget/LinearLayout;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoSearchView$UnfoldAnimation;,
        Lamigo/widget/AmigoSearchView$SearchAutoComplete;,
        Lamigo/widget/AmigoSearchView$OnSuggestionListener;,
        Lamigo/widget/AmigoSearchView$OnCloseListener;,
        Lamigo/widget/AmigoSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field private static mHintColor:Landroid/content/res/ColorStateList;

.field private static mTextColor:Landroid/content/res/ColorStateList;


# instance fields
.field private final GN_SEARCHVIEW_ANIMTIME:I

.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mGnSearchBgLayout:Landroid/widget/LinearLayout;

.field private mGnSearchGoButton:Landroid/widget/ImageView;

.field private mGnSearchVoiceButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mIsGnWidget3Style:Z

.field private mIsSearchSubmitMode:Z

.field private mIsSearchVoiceMode:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lamigo/widget/AmigoSearchView$OnCloseListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

.field private mQueryTextViewBackgroundColor:I

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchViewAnim:Landroid/view/animation/Animation;

.field private mSearchViewLayout:Landroid/widget/LinearLayout;

.field private mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

.field private mSearchViewZoomAnim:Landroid/view/animation/Animation;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButtonEnabled:Z

.field private mVoiceIcon:Landroid/graphics/drawable/Drawable;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    new-instance v8, Lamigo/widget/AmigoSearchView$1;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$1;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v8, Lamigo/widget/AmigoSearchView$2;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$2;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v8, Lamigo/widget/AmigoSearchView$3;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$3;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 940
    new-instance v8, Lamigo/widget/AmigoSearchView$6;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$6;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 989
    new-instance v8, Lamigo/widget/AmigoSearchView$7;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$7;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1420
    new-instance v8, Lamigo/widget/AmigoSearchView$8;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$8;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1431
    new-instance v8, Lamigo/widget/AmigoSearchView$9;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$9;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1727
    new-instance v8, Lamigo/widget/AmigoSearchView$10;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$10;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1886
    const/16 v8, 0x12c

    iput v8, p0, Lamigo/widget/AmigoSearchView;->GN_SEARCHVIEW_ANIMTIME:I

    .line 1888
    const/4 v8, 0x0

    iput-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIsGnWidget3Style:Z

    .line 1889
    const/4 v8, 0x0

    iput-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIsSearchVoiceMode:Z

    .line 1890
    const/4 v8, 0x0

    iput-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIsSearchSubmitMode:Z

    .line 2041
    new-instance v8, Lamigo/widget/AmigoSearchView$11;

    invoke-direct {v8, p0}, Lamigo/widget/AmigoSearchView$11;-><init>(Lamigo/widget/AmigoSearchView;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 256
    sget-object v8, Lcom/amigo/internal/R$styleable;->AmigoSearchView:[I

    const v9, 0x9010087

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 257
    .local v7, "typedArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lamigo/widget/AmigoSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 258
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lamigo/widget/AmigoSearchView;->mHintColor:Landroid/content/res/ColorStateList;

    .line 259
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextViewBackgroundColor:I

    .line 260
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 268
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x9030028

    const/4 v9, 0x1

    invoke-virtual {v3, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 271
    const v8, 0x90b0053

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchButton:Landroid/view/View;

    .line 272
    const v8, 0x90b0054

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    .line 273
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v8, p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setSearchView(Lamigo/widget/AmigoSearchView;)V

    .line 275
    const v8, 0x90b0055

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 276
    const v8, 0x90b0056

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;

    .line 279
    const v8, 0x90b0059

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 281
    const v8, 0x90b005b

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 283
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mSearchButton:Landroid/view/View;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 292
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v9, p0, Lamigo/widget/AmigoSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 294
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    new-instance v9, Lamigo/widget/AmigoSearchView$4;

    invoke-direct {v9, p0}, Lamigo/widget/AmigoSearchView$4;-><init>(Lamigo/widget/AmigoSearchView;)V

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 304
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 307
    sget-object v8, Landroid/R$styleable;->SearchView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 310
    .local v5, "maxWidth":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 311
    invoke-virtual {p0, v5}, Lamigo/widget/AmigoSearchView;->setMaxWidth(I)V

    .line 313
    :cond_0
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 314
    .local v6, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 315
    invoke-virtual {p0, v6}, Lamigo/widget/AmigoSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 318
    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 319
    invoke-virtual {p0, v2}, Lamigo/widget/AmigoSearchView;->setImeOptions(I)V

    .line 321
    :cond_2
    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 322
    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 323
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoSearchView;->setInputType(I)V

    .line 326
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    const/4 v1, 0x1

    .line 330
    .local v1, "focusable":Z
    sget-object v8, Landroid/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 331
    const/16 v8, 0x13

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 332
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->setFocusable(Z)V

    .line 336
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 337
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "web_search"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 342
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v8}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v8

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lamigo/widget/AmigoSearchView;->mDropDownAnchor:Landroid/view/View;

    .line 345
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 346
    iget-object v8, p0, Lamigo/widget/AmigoSearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v9, Lamigo/widget/AmigoSearchView$5;

    invoke-direct {v9, p0}, Lamigo/widget/AmigoSearchView$5;-><init>(Lamigo/widget/AmigoSearchView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    :cond_4
    iget-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v8}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 356
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateQueryHint()V

    .line 359
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->isGioneeViewStyle()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->isGioneeWidget3Support()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIsGnWidget3Style:Z

    .line 360
    iget-boolean v8, p0, Lamigo/widget/AmigoSearchView;->mIsGnWidget3Style:Z

    if-eqz v8, :cond_5

    .line 361
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->initSearchView()V

    .line 370
    :cond_5
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->changeColors()V

    .line 372
    return-void

    .line 359
    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lamigo/widget/AmigoSearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$1200(Lamigo/widget/AmigoSearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lamigo/widget/AmigoSearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lamigo/widget/AmigoSearchView;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lamigo/widget/AmigoSearchView;I)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lamigo/widget/AmigoSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1700()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lamigo/widget/AmigoSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lamigo/widget/AmigoSearchView;->mHintColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$2000(Lamigo/widget/AmigoSearchView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchViewZoomAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2100(Lamigo/widget/AmigoSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->setupSearchViewUnfoldAnim()V

    return-void
.end method

.method static synthetic access$2300(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$UnfoldAnimation;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    return-object v0
.end method

.method static synthetic access$2400(Lamigo/widget/AmigoSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mIsSearchSubmitMode:Z

    return v0
.end method

.method static synthetic access$2500(Lamigo/widget/AmigoSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lamigo/widget/AmigoSearchView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchViewAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$500(Lamigo/widget/AmigoSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$800(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$900(Lamigo/widget/AmigoSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 9

    .prologue
    .line 1375
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 1376
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1377
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1378
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1380
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 1382
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    if-eqz v7, :cond_1

    const v7, 0x9050008

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x9050009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1386
    .local v2, "iconOffset":I
    :goto_0
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1391
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .line 1393
    .local v4, "offset":I
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1394
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1396
    .local v6, "width":I
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1398
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_0
    return-void

    .line 1382
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private changeColors()V
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 380
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 384
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->changeSelectableItemBackground(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getEditTextBackgroudColor_B3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 387
    :cond_0
    return-void
.end method

.method private changeSelectableItemBackground(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 392
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 393
    .local v1, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 395
    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1561
    if-eqz p2, :cond_0

    .line 1562
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1564
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1565
    if-eqz p4, :cond_1

    .line 1566
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    :cond_1
    if-eqz p3, :cond_2

    .line 1569
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1572
    const-string v1, "app_data"

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1574
    :cond_3
    if-eqz p5, :cond_4

    .line 1575
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    :cond_4
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1579
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1674
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1677
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1679
    :cond_0
    if-nez v1, :cond_1

    .line 1680
    const-string v1, "android.intent.action.SEARCH"

    .line 1684
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1685
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1686
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1689
    :cond_2
    if-eqz v7, :cond_3

    .line 1690
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1691
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1695
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1697
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1698
    .local v4, "query":Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1700
    invoke-direct/range {v0 .. v6}, Lamigo/widget/AmigoSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1710
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1695
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1701
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1704
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1708
    .local v11, "rowNum":I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    const/4 v0, 0x0

    goto :goto_1

    .line 1705
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1706
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1601
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1606
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1608
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1615
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1616
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Lamigo/widget/AmigoSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 1617
    const-string v10, "app_data"

    iget-object v11, p0, Lamigo/widget/AmigoSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1623
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1626
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1627
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1628
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1629
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1631
    .local v2, "maxResults":I
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1632
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1633
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1635
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1636
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1638
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1639
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1641
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1642
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1644
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1648
    const-string v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1653
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1655
    return-object v9

    .line 1648
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1586
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1587
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1588
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    return-object v1

    .line 1588
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1267
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 1716
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 1717
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 1105
    const/4 v1, 0x0

    .line 1107
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1109
    invoke-static {p0, v0}, Lamigo/widget/AmigoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    :cond_0
    if-nez v1, :cond_1

    .line 1115
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1117
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1147
    iget-boolean v2, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    if-nez v2, :cond_0

    .line 1161
    .end local p1    # "hintText":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .line 1155
    .restart local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1156
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1158
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .local v1, "textSize":I
    move-object p1, v0

    .line 1161
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 831
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 838
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 839
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 841
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 844
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 835
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 836
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private initSearchView()V
    .locals 3

    .prologue
    .line 1903
    const/4 v0, 0x0

    .line 1905
    .local v0, "count":I
    const v1, 0x90b0063

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewLayout:Landroid/widget/LinearLayout;

    .line 1906
    const v1, 0x90b0057

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    .line 1907
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x90a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewZoomAnim:Landroid/view/animation/Animation;

    .line 1910
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x90a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewAnim:Landroid/view/animation/Animation;

    .line 1912
    const v1, 0x90b005a

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    .line 1913
    const v1, 0x90b0058

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;

    .line 1916
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1917
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextViewBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1922
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mVoiceIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1923
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mVoiceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1926
    :cond_1
    return-void
.end method

.method private isGioneeViewStyle()Z
    .locals 1

    .prologue
    .line 2079
    const/4 v0, 0x1

    return v0
.end method

.method private isGioneeWidget3Support()Z
    .locals 1

    .prologue
    .line 2083
    const/4 v0, 0x1

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1720
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1511
    if-nez p1, :cond_0

    .line 1521
    :goto_0
    return-void

    .line 1517
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1533
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1534
    invoke-direct/range {v0 .. v6}, Lamigo/widget/AmigoSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1535
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1536
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1494
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1495
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    invoke-direct {p0, v0, p2, p3}, Lamigo/widget/AmigoSearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1500
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lamigo/widget/AmigoSearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1502
    const/4 v2, 0x1

    .line 1504
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1270
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1271
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1272
    iget-boolean v1, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnCloseListener:Lamigo/widget/AmigoSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnCloseListener:Lamigo/widget/AmigoSearchView$OnCloseListener;

    invoke-interface {v1}, Lamigo/widget/AmigoSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->clearFocus()V

    .line 1278
    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 1287
    :cond_1
    :goto_0
    return-void

    .line 1282
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1284
    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1401
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Lamigo/widget/AmigoSearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1403
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lamigo/widget/AmigoSearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1404
    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->setImeVisibility(Z)V

    .line 1405
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->dismissSuggestions()V

    .line 1406
    const/4 v0, 0x1

    .line 1408
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1412
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Lamigo/widget/AmigoSearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1414
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSearchView;->rewriteQueryFromSuggestion(I)V

    .line 1415
    const/4 v0, 0x1

    .line 1417
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 1291
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->setImeVisibility(Z)V

    .line 1293
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1296
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1252
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1253
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1254
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lamigo/widget/AmigoSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1256
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1257
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lamigo/widget/AmigoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->setImeVisibility(Z)V

    .line 1260
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->dismissSuggestions()V

    .line 1263
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return v5

    .line 1036
    :cond_1
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    .line 1039
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1042
    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    .line 1044
    :cond_2
    iget-object v6, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1045
    .local v3, "position":I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lamigo/widget/AmigoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1050
    .end local v3    # "position":I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    .line 1055
    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .line 1057
    .local v4, "selPoint":I
    :goto_1
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 1058
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1059
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->clearListSelection()V

    .line 1060
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    .line 1062
    goto :goto_0

    .line 1055
    .end local v4    # "selPoint":I
    :cond_5
    iget-object v7, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    .line 1066
    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1073
    :cond_7
    iget-object v6, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1074
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1078
    :cond_8
    iget-object v6, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1079
    .restart local v3    # "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1080
    iget-object v6, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1081
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1082
    invoke-static {v2, v0}, Lamigo/widget/AmigoSearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1084
    invoke-direct {p0, v3, p2, v1}, Lamigo/widget/AmigoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1238
    iget-object v4, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1239
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1241
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateSubmitButton(Z)V

    .line 1242
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSearchView;->updateVoiceButton(Z)V

    .line 1243
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateCloseButton()V

    .line 1244
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateSubmitArea()V

    .line 1245
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1246
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lamigo/widget/AmigoSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1248
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1249
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    .line 1240
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    .line 1242
    goto :goto_1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 886
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1461
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1462
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1463
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1466
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1468
    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1469
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1472
    invoke-direct {p0, v1}, Lamigo/widget/AmigoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1475
    :cond_1
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1479
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 919
    if-eqz p1, :cond_1

    .line 920
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 923
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 926
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1527
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1529
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 1530
    return-void

    .line 1529
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private setupSearchViewUnfoldAnim()V
    .locals 4

    .prologue
    .line 2033
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchEditFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2035
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v1, Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchEditFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lamigo/widget/AmigoSearchView$UnfoldAnimation;-><init>(Lamigo/widget/AmigoSearchView;II)V

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    .line 2036
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSearchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2037
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0006

    invoke-virtual {v1, v2, v3}, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 2038
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->setDuration(J)V

    .line 2039
    return-void
.end method

.method private startBeginAnimation()V
    .locals 2

    .prologue
    .line 1993
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchViewZoomAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1996
    return-void
.end method

.method private updateCloseButton()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 871
    iget-object v4, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 874
    .local v0, "hasText":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v4, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lamigo/widget/AmigoSearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 875
    .local v1, "showClose":Z
    :goto_1
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    iget-object v4, p0, Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v0, :cond_5

    sget-object v4, Lamigo/widget/AmigoSearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 878
    iget-boolean v4, p0, Lamigo/widget/AmigoSearchView;->mIsGnWidget3Style:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lamigo/widget/AmigoSearchView;->mIsSearchVoiceMode:Z

    if-eqz v4, :cond_1

    .line 879
    if-nez v1, :cond_6

    :goto_4
    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->updateSearchVoiceButton(Z)V

    .line 882
    :cond_1
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "showClose":Z
    :cond_2
    move v0, v2

    .line 871
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_3
    move v1, v2

    .line 874
    goto :goto_1

    .line 875
    .restart local v1    # "showClose":Z
    :cond_4
    const/16 v4, 0x8

    goto :goto_2

    .line 876
    :cond_5
    sget-object v4, Lamigo/widget/AmigoSearchView;->EMPTY_STATE_SET:[I

    goto :goto_3

    :cond_6
    move v3, v2

    .line 879
    goto :goto_4
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 889
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 890
    .local v0, "focused":Z
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lamigo/widget/AmigoSearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 894
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->invalidate()V

    .line 895
    return-void

    .line 890
    :cond_0
    sget-object v1, Lamigo/widget/AmigoSearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1165
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1166
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1168
    const/4 v0, 0x0

    .line 1169
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1170
    .local v1, "hintId":I
    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :cond_2
    if-eqz v0, :cond_0

    .line 1174
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1177
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_3
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Lamigo/widget/AmigoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1185
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1186
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1187
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1188
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1191
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1194
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1195
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1196
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1203
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1206
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setInputType(I)V

    .line 1207
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1208
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1212
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1213
    new-instance v1, Lamigo/widget/AmigoSuggestionsAdapter;

    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lamigo/widget/AmigoSuggestionsAdapter;-><init>(Landroid/content/Context;Lamigo/widget/AmigoSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1215
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1216
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Lamigo/widget/AmigoSuggestionsAdapter;

    iget-boolean v3, p0, Lamigo/widget/AmigoSearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSuggestionsAdapter;->setQueryRefinement(I)V

    .line 1220
    :cond_3
    return-void
.end method

.method private updateSearchVoiceButton(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1967
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1971
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateSubmitArea()V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 852
    const/16 v0, 0x8

    .line 853
    .local v0, "visibility":I
    iget-boolean v1, p0, Lamigo/widget/AmigoSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lamigo/widget/AmigoSearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 855
    :cond_0
    const/4 v0, 0x0

    .line 858
    :cond_1
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 811
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mIconified:Z

    .line 813
    if-eqz p1, :cond_0

    move v1, v2

    .line 815
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 817
    .local v0, "hasText":Z
    :goto_1
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateSubmitButton(Z)V

    .line 819
    iget-object v5, p0, Lamigo/widget/AmigoSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 825
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateCloseButton()V

    .line 826
    if-nez v0, :cond_3

    :goto_3
    invoke-direct {p0, v4}, Lamigo/widget/AmigoSearchView;->updateVoiceButton(Z)V

    .line 827
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateSubmitArea()V

    .line 828
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 813
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 815
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v2

    .line 819
    goto :goto_2

    :cond_3
    move v4, v2

    .line 826
    goto :goto_3
.end method

.method private updateVoiceButton(Z)V
    .locals 2
    .param p1, "empty"    # Z

    .prologue
    .line 1229
    const/16 v0, 0x8

    .line 1230
    .local v0, "visibility":I
    iget-boolean v1, p0, Lamigo/widget/AmigoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1231
    const/4 v0, 0x0

    .line 1235
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mClearingFocus:Z

    .line 501
    invoke-direct {p0, v1}, Lamigo/widget/AmigoSearchView;->setImeVisibility(Z)V

    .line 502
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 503
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->clearFocus()V

    .line 504
    iput-boolean v1, p0, Lamigo/widget/AmigoSearchView;->mClearingFocus:Z

    .line 505
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 606
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 607
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 616
    :cond_0
    :goto_0
    return-object v0

    .line 608
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_2

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 611
    .local v1, "hintId":I
    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->clearFocus()V

    .line 1343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 1344
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget v1, p0, Lamigo/widget/AmigoSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mExpandedInActionView:Z

    .line 1346
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1353
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mExpandedInActionView:Z

    .line 1356
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoSearchView;->mCollapsedImeOptions:I

    .line 1357
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget v1, p0, Lamigo/widget/AmigoSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1358
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 902
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 903
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lamigo/widget/AmigoSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lamigo/widget/AmigoSuggestionsAdapter;

    invoke-virtual {v0}, Lamigo/widget/AmigoSuggestionsAdapter;->enable()V

    .line 907
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->startBeginAnimation()V

    .line 909
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 914
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 915
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 916
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1364
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1365
    const-class v0, Lamigo/widget/AmigoSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1366
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1370
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1371
    const-class v0, Lamigo/widget/AmigoSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 968
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 969
    const/4 v1, 0x0

    .line 981
    :goto_0
    return v1

    .line 974
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 975
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 976
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lamigo/widget/AmigoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x1

    goto :goto_0

    .line 981
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 773
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 803
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 779
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 781
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 801
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 802
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 784
    :sswitch_0
    iget v2, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 785
    iget v2, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 787
    :cond_2
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 789
    goto :goto_1

    .line 792
    :sswitch_1
    iget v2, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 793
    iget v2, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 798
    :sswitch_2
    iget v2, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 781
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 938
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1322
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 1325
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->postUpdateFocusedState()V

    .line 1326
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->forceSuggestionQuery()V

    .line 1329
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1333
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1334
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->postUpdateFocusedState()V

    .line 1335
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-boolean v2, p0, Lamigo/widget/AmigoSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 493
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 487
    iget-object v2, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 488
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0, v1}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 493
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 429
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 430
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 659
    if-eqz p1, :cond_0

    .line 660
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onCloseClicked()V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 632
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 633
    :cond_0
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mIconifiedByDefault:Z

    .line 634
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 635
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 442
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setInputType(I)V

    .line 465
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 754
    iput p1, p0, Lamigo/widget/AmigoSearchView;->mMaxWidth:I

    .line 756
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->requestLayout()V

    .line 757
    return-void
.end method

.method public setOnCloseListener(Lamigo/widget/AmigoSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoSearchView$OnCloseListener;

    .prologue
    .line 523
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mOnCloseListener:Lamigo/widget/AmigoSearchView$OnCloseListener;

    .line 524
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 532
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 533
    return-void
.end method

.method public setOnQueryTextListener(Lamigo/widget/AmigoSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    .prologue
    .line 514
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mOnQueryChangeListener:Lamigo/widget/AmigoSearchView$OnQueryTextListener;

    .line 515
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 553
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 554
    return-void
.end method

.method public setOnSuggestionListener(Lamigo/widget/AmigoSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    .prologue
    .line 541
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mOnSuggestionListener:Lamigo/widget/AmigoSearchView$OnSuggestionListener;

    .line 542
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 574
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 575
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 577
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->onSubmitQuery()V

    .line 584
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 595
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 596
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateQueryHint()V

    .line 597
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mQueryRefinement:Z

    .line 714
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lamigo/widget/AmigoSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lamigo/widget/AmigoSuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSuggestionsAdapter;->setQueryRefinement(I)V

    .line 718
    :cond_0
    return-void

    .line 715
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 407
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 408
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateSearchAutoComplete()V

    .line 410
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->updateQueryHint()V

    .line 413
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mVoiceButtonEnabled:Z

    .line 415
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 420
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 421
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 685
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mSubmitButtonEnabled:Z

    .line 686
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->updateViewsVisibility(Z)V

    .line 687
    return-void
.end method

.method public setSubmitSearchMode(Z)V
    .locals 1
    .param p1, "isSubmitSearchMode"    # Z

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lamigo/widget/AmigoSearchView;->setSubmitSearchMode(ZLandroid/view/View$OnClickListener;)V

    .line 1930
    return-void
.end method

.method public setSubmitSearchMode(ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "isSubmitSearchMode"    # Z
    .param p2, "searchSubmitClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1933
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mIsSearchSubmitMode:Z

    .line 1934
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1939
    if-eqz p1, :cond_0

    .line 1941
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;

    const v1, 0x9020032

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1944
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1938
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 735
    iput-object p1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 737
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 738
    return-void
.end method

.method public setVoiceSearchMode(ZLandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "isVoiceSearchMode"    # Z
    .param p2, "searchVoiceClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1949
    iput-boolean p1, p0, Lamigo/widget/AmigoSearchView;->mIsSearchVoiceMode:Z

    .line 1950
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1955
    iget-boolean v0, p0, Lamigo/widget/AmigoSearchView;->mIsSearchVoiceMode:Z

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1957
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1961
    iget-object v0, p0, Lamigo/widget/AmigoSearchView;->mGnSearchVoiceButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoSearchView;->changeSelectableItemBackground(Landroid/view/View;)V

    goto :goto_0

    .line 1954
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public startEndAnimation()V
    .locals 0

    .prologue
    .line 2000
    return-void
.end method
