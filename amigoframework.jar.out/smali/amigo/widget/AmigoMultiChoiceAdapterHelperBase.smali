.class public abstract Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;
.super Ljava/lang/Object;
.source "AmigoMultiChoiceAdapterHelperBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "mca_selection"

.field private static final BUNDLE_NEDD_ANIMATION:Ljava/lang/String; = "mca_need_animation"

.field private static final MOVEX:I = 0x30

.field private static final MOVE_TIME:I = 0xfa

.field protected static final TAG:Ljava/lang/String; = "AmigoMultiChoiceAdapterHelperBase"


# instance fields
.field protected mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<-",
            "Lamigo/widget/AmigoMultiChoiceBaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNeedAnimal:Z

.field protected mOwner:Landroid/widget/BaseAdapter;

.field private mSelectAllBtn:Lamigo/widget/AmigoButton;

.field private mTitleView:Lamigo/widget/AmigoTextView;


# direct methods
.method protected constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "owner"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    .line 58
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;

    .prologue
    .line 42
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->doClickSelectAllBtn()V

    return-void
.end method

.method private correctPositionAccountingForHeader(Landroid/widget/AdapterView;I)I
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v1, p1

    .line 268
    .local v1, "listView":Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 269
    .local v0, "headersCount":I
    :goto_1
    if-lez v0, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p2, v2

    .line 272
    :cond_0
    return p2

    .line 267
    .end local v0    # "headersCount":I
    .end local v1    # "listView":Landroid/widget/ListView;
    .restart local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    .end local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_1
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 427
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private displayMultichoiceView(Landroid/view/View;IZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # I
    .param p3, "needAnimal"    # Z

    .prologue
    const/4 v4, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    if-nez p3, :cond_2

    .line 344
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 348
    :cond_2
    if-nez p2, :cond_3

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_3
    const/4 v1, 0x0

    .line 353
    .local v1, "transAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 354
    .local v0, "moveX":I
    if-nez p2, :cond_4

    .line 355
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 359
    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    :goto_1
    new-instance v2, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;

    invoke-direct {v2, p0, p2, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;-><init>(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    if-eqz v1, :cond_0

    .line 379
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 380
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 357
    :cond_4
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    int-to-float v2, v0

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_1
.end method

.method private doClickSelectAllBtn()V
    .locals 12

    .prologue
    .line 112
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getCheckedItemCount()I

    move-result v5

    .line 113
    .local v5, "selCnt":I
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    .line 114
    .local v6, "totalCnt":I
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getCheckableItemCount()I

    move-result v1

    .line 115
    .local v1, "checkableCnt":I
    const/4 v2, 0x0

    .line 116
    .local v2, "correctedPosition":I
    const/4 v7, 0x0

    .line 118
    .local v7, "wasSelected":Z
    if-ne v5, v1, :cond_1

    .line 119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 120
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mAdapterView:Landroid/widget/AdapterView;

    invoke-direct {p0, v8, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->correctPositionAccountingForHeader(Landroid/widget/AdapterView;I)I

    move-result v2

    .line 121
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v7

    .line 122
    if-eqz v7, :cond_0

    .line 123
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x1

    .line 128
    .local v4, "isCheckable":Z
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoMultiChoiceAdapter;

    .line 129
    .local v0, "adapter":Lamigo/widget/AmigoMultiChoiceAdapter;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 130
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mAdapterView:Landroid/widget/AdapterView;

    invoke-direct {p0, v8, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->correctPositionAccountingForHeader(Landroid/widget/AdapterView;I)I

    move-result v2

    .line 131
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v7

    .line 132
    invoke-interface {v0, v2}, Lamigo/widget/AmigoMultiChoiceAdapter;->isItemCheckable(I)Z

    move-result v4

    .line 133
    if-nez v7, :cond_2

    if-eqz v4, :cond_2

    .line 134
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "adapter":Lamigo/widget/AmigoMultiChoiceAdapter;
    .end local v4    # "isCheckable":Z
    :cond_3
    iget-object v8, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionModeCustomView()V

    .line 140
    return-void
.end method

.method private doItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoMultiChoiceAdapter;

    .line 255
    .local v0, "adapter":Lamigo/widget/AmigoMultiChoiceAdapter;
    invoke-interface {v0, p3}, Lamigo/widget/AmigoMultiChoiceAdapter;->isItemCheckable(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 263
    :goto_0
    return v5

    .line 258
    :cond_0
    invoke-direct {p0, p1, p3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->correctPositionAccountingForHeader(Landroid/widget/AdapterView;I)I

    move-result v1

    .line 260
    .local v1, "correctedPosition":I
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->positionToSelectionHandle(I)J

    move-result-wide v2

    .line 261
    .local v2, "handle":J
    invoke-virtual {p0, v2, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v4

    .line 262
    .local v4, "wasChecked":Z
    if-nez v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p0, v2, v3, v5}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->setItemChecked(JZ)V

    move v5, v6

    .line 263
    goto :goto_0
.end method

.method private getActionModeCustomView()Landroid/view/View;
    .locals 4

    .prologue
    .line 93
    const v0, 0x903003e

    .line 94
    .local v0, "defaultActionModeLayout":I
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    const v2, 0x90b0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoTextView;

    iput-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mTitleView:Lamigo/widget/AmigoTextView;

    .line 96
    const v2, 0x90b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoButton;

    iput-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    .line 97
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    .line 100
    :cond_0
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    new-instance v3, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$1;

    invoke-direct {v3, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$1;-><init>(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;)V

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v1
.end method

.method private getCheckableItemCount()I
    .locals 7

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "cnt":I
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoMultiChoiceAdapter;

    .line 411
    .local v0, "adapter":Lamigo/widget/AmigoMultiChoiceAdapter;
    iget-object v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    .line 412
    .local v5, "itemCnt":I
    const/4 v4, 0x0

    .line 414
    .local v4, "isCheckable":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 415
    iget-object v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mAdapterView:Landroid/widget/AdapterView;

    invoke-direct {p0, v6, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->correctPositionAccountingForHeader(Landroid/widget/AdapterView;I)I

    move-result v2

    .line 416
    .local v2, "correctedPosition":I
    invoke-interface {v0, v2}, Lamigo/widget/AmigoMultiChoiceAdapter;->isItemCheckable(I)Z

    move-result v4

    .line 417
    if-eqz v4, :cond_0

    .line 418
    add-int/lit8 v1, v1, 0x1

    .line 414
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "correctedPosition":I
    :cond_1
    return v1
.end method

.method private updateActionModeCustomView()V
    .locals 8

    .prologue
    .line 143
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mTitleView:Lamigo/widget/AmigoTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getCheckedItemCount()I

    move-result v1

    .line 147
    .local v1, "count":I
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getCheckableItemCount()I

    move-result v0

    .line 148
    .local v0, "checkableCnt":I
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mTitleView:Lamigo/widget/AmigoTextView;

    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x909001c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    if-ne v1, v0, :cond_2

    .line 150
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x909001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionMode()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mSelectAllBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x909001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public addMultichoiceView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 385
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-object v3

    .line 389
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 391
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x9030041

    .line 392
    .local v0, "containerId":I
    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 393
    .local v3, "multichoiceContainer":Landroid/widget/LinearLayout;
    const v4, 0x90b006c

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 394
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public checkActivity()V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ListView cannot belong to an activity which subclasses ListActivity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    return-void
.end method

.method public checkItem(J)V
    .locals 5
    .param p1, "handle"    # J

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v1

    .line 188
    .local v1, "wasSelected":Z
    if-eqz v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getActionModeCustomView()Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->startActionMode(Landroid/view/View;)V

    .line 195
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 197
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionModeCustomView()V

    goto :goto_0
.end method

.method protected abstract clearActionMode()V
.end method

.method public enterMultiChoiceMode()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getActionModeCustomView()Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->startActionMode(Landroid/view/View;)V

    .line 404
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 405
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionModeCustomView()V

    .line 406
    return-void
.end method

.method protected abstract finishActionMode()V
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedItems()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "viewWithoutSelection"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 302
    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    .line 303
    .local v4, "root":Landroid/view/ViewGroup;
    const v5, 0x1020001

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoCheckBox;

    .line 305
    .local v1, "checkboxView":Lamigo/widget/AmigoCheckBox;
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->positionToSelectionHandle(I)J

    move-result-wide v2

    .line 306
    .local v2, "handle":J
    invoke-virtual {p0, v2, v3}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v5

    invoke-virtual {v1, v5}, Lamigo/widget/AmigoCheckBox;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoMultiChoiceAdapter;

    .line 308
    .local v0, "adapter":Lamigo/widget/AmigoMultiChoiceAdapter;
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    long-to-int v5, v2

    invoke-interface {v0, v5}, Lamigo/widget/AmigoMultiChoiceAdapter;->isItemCheckable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-virtual {v1}, Lamigo/widget/AmigoCheckBox;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 311
    iget-boolean v5, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    invoke-direct {p0, v1, v7, v5}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->displayMultichoiceView(Landroid/view/View;IZ)V

    .line 324
    :cond_0
    :goto_0
    return-object p2

    .line 315
    :cond_1
    invoke-direct {p0, v1, v6, v7}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->displayMultichoiceView(Landroid/view/View;IZ)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v1}, Lamigo/widget/AmigoCheckBox;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 319
    iget-boolean v5, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    invoke-direct {p0, v1, v6, v5}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->displayMultichoiceView(Landroid/view/View;IZ)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-direct {p0, v1, v6, v7}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->displayMultichoiceView(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method protected abstract isActionModeStarted()Z
.end method

.method public isChecked(J)Z
    .locals 3
    .param p1, "handle"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 285
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->clearActionMode()V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    .line 287
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 288
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-direct/range {p0 .. p5}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->doItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->doItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isActionModeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 331
    iput-boolean v2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    .line 334
    :cond_0
    return v2
.end method

.method protected positionToSelectionHandle(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v6, "mca_selection"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 66
    .local v1, "array":[J
    iget-object v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 67
    if-eqz v1, :cond_1

    .line 68
    move-object v0, v1

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    .line 69
    .local v4, "id":J
    iget-object v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "id":J
    :cond_1
    const-string v6, "mca_need_animation"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    goto :goto_0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iget-object v5, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 170
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 171
    .local v1, "i":I
    iget-object v5, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 172
    .local v4, "id":Ljava/lang/Long;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v1

    move v1, v2

    .line 173
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 174
    .end local v4    # "id":Ljava/lang/Long;
    :cond_0
    const-string v5, "mca_selection"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 175
    const-string v5, "mca_need_animation"

    iget-boolean v6, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mNeedAnimal:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method protected abstract setActionModeTitle(Ljava/lang/String;)V
.end method

.method public setAdapterView(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<-",
            "Landroid/widget/BaseAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mAdapterView:Landroid/widget/AdapterView;

    .line 77
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->checkActivity()V

    .line 78
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 82
    check-cast p1, Lamigo/widget/AmigoListView;

    .end local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v1, Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    invoke-virtual {p1, v1}, Lamigo/widget/AmigoListView;->setMultiChoiceScrollListener(Lamigo/widget/AmigoListView$MultiChoiceScrollListener;)V

    .line 84
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getActionModeCustomView()Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->startActionMode(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionModeCustomView()V

    .line 89
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 179
    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->checkItem(J)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->uncheckItem(J)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 166
    return-void
.end method

.method protected abstract startActionMode(Landroid/view/View;)V
.end method

.method public uncheckItem(J)V
    .locals 3
    .param p1, "handle"    # J

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->isChecked(J)Z

    move-result v0

    .line 202
    .local v0, "wasSelected":Z
    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mCheckedItems:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->mOwner:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 207
    invoke-direct {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->updateActionModeCustomView()V

    goto :goto_0
.end method

.method protected abstract updateActionMode()V
.end method
