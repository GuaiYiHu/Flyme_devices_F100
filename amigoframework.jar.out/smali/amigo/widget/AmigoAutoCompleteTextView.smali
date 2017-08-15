.class public Lamigo/widget/AmigoAutoCompleteTextView;
.super Lamigo/widget/AmigoEditText;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;,
        Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;,
        Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;,
        Lamigo/widget/AmigoAutoCompleteTextView$Validator;,
        Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;,
        Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mListSelector:Landroid/graphics/drawable/Drawable;

.field private mObserver:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    iput-boolean v4, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 107
    iput v6, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mLastKeyCode:I

    .line 110
    iput-object v5, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    .line 117
    iput-boolean v4, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 135
    new-instance v2, Landroid/widget/ListPopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 137
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 138
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 140
    sget-object v2, Lcom/amigo/internal/R$styleable;->AmigoAutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mThreshold:I

    .line 146
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mListSelector:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mListSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 150
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 157
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownAnchorId:I

    .line 162
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 165
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 169
    const v2, 0x903001c

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintResource:I

    .line 172
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v3, p0, v5}, Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoAutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getInputType()I

    move-result v1

    .line 178
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_0

    .line 180
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 181
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoAutoCompleteTextView;->setRawInputType(I)V

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoAutoCompleteTextView;->setFocusable(Z)V

    .line 188
    new-instance v2, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    new-instance v2, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V

    iput-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPassThroughClickListener:Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;

    .line 191
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPassThroughClickListener:Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Lamigo/widget/AmigoEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mListSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lamigo/widget/AmigoAutoCompleteTextView;->changeListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_1
    return-void
.end method

.method static synthetic access$500(Lamigo/widget/AmigoAutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lamigo/widget/AmigoAutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;

    .prologue
    .line 85
    invoke-direct {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Lamigo/widget/AmigoAutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;

    .prologue
    .line 85
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lamigo/widget/AmigoAutoCompleteTextView;I)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1130
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1131
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 1134
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 1135
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1136
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1137
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1139
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1140
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1141
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1142
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1143
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v8

    .line 1145
    add-int/lit8 v8, v8, 0x1

    .line 1139
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1149
    :cond_1
    if-eq v8, v2, :cond_2

    .line 1150
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1151
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    move-object v1, v9

    .line 1155
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1158
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private changeListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .end local p1    # "selector":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_0
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoAutoCompleteTextView;->ensureImeVisible(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 895
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 897
    if-gez p2, :cond_1

    .line 898
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 902
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 903
    const-string v0, "AutoCompleteTextView"

    const-string v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 900
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 907
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    .line 908
    invoke-virtual {p0, v7}, Lamigo/widget/AmigoAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    .line 911
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 912
    iget-object v6, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 914
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 915
    :cond_3
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 916
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 917
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 919
    :cond_4
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 923
    .end local v6    # "list":Landroid/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_5
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 975
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 985
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 986
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 987
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_0

    .line 988
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 990
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    .line 995
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 838
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 829
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 3

    .prologue
    .line 1046
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1048
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1049
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1051
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1052
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1053
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 795
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 797
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 803
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    .line 805
    :cond_4
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 752
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1082
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1084
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->showDropDown()V

    .line 1087
    :cond_1
    return-void

    .line 1082
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Lamigo/widget/AmigoAutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1033
    invoke-super {p0}, Lamigo/widget/AmigoEditText;->onAttachedToWindow()V

    .line 1034
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 889
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 892
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1038
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    .line 1039
    invoke-super {p0}, Lamigo/widget/AmigoEditText;->onDetachedFromWindow()V

    .line 1040
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 1009
    invoke-super {p0, p1}, Lamigo/widget/AmigoEditText;->onDisplayHint(I)V

    .line 1010
    packed-switch p1, :pswitch_data_0

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1012
    :pswitch_0
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 971
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1021
    invoke-super {p0, p1, p2, p3}, Lamigo/widget/AmigoEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1023
    if-nez p1, :cond_0

    .line 1024
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->performValidation()V

    .line 1026
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    .line 1029
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 715
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 720
    packed-switch p1, :pswitch_data_0

    .line 728
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    :cond_3
    iput p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mLastKeyCode:I

    .line 733
    invoke-super {p0, p1, p2}, Lamigo/widget/AmigoEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 734
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mLastKeyCode:I

    .line 736
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->clearListSelection()V

    goto :goto_0

    .line 722
    .end local v0    # "handled":Z
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->performValidation()V

    goto :goto_1

    .line 720
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 663
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 667
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 668
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 669
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 684
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 673
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 674
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 675
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 678
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 679
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 684
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Lamigo/widget/AmigoEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 690
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 691
    sparse-switch p1, :sswitch_data_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->performCompletion()V

    .line 710
    :cond_1
    :goto_0
    return v1

    .line 698
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->performCompletion()V

    goto :goto_0

    .line 710
    :cond_2
    invoke-super {p0, p1, p2}, Lamigo/widget/AmigoEditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 691
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1001
    invoke-super {p0, p1}, Lamigo/widget/AmigoEditText;->onWindowFocusChanged(Z)V

    .line 1002
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->dismissDropDown()V

    .line 1005
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 884
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lamigo/widget/AmigoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 885
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 876
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1191
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1195
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lamigo/widget/AmigoAutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lamigo/widget/AmigoAutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 960
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->clearComposingText()V

    .line 962
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 965
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 966
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 644
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mObserver:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V

    iput-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mObserver:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    .line 649
    :cond_0
    :goto_0
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 650
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 653
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mObserver:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 658
    :goto_1
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mObserver:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 655
    :cond_2
    iput-object v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 240
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 241
    if-eqz p1, :cond_1

    .line 242
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x90b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iput-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 255
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 253
    iput-object v3, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 473
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 345
    iput p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownAnchorId:I

    .line 346
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 435
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 368
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 494
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 322
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 410
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 389
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 294
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 1126
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1127
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1057
    invoke-super {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoEditText;->setFrame(IIII)Z

    move-result v0

    .line 1059
    .local v0, "result":Z
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->showDropDown()V

    .line 1063
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 846
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 847
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 214
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPassThroughClickListener:Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;

    # setter for: Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->access$302(Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 215
    return-void
.end method

.method public setOnDismissListener(Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    .line 606
    new-instance v0, Lamigo/widget/AmigoAutoCompleteTextView$1;

    .end local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$1;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;)V

    .line 612
    .restart local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 613
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 539
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 540
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 549
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 550
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 943
    if-eqz p2, :cond_0

    .line 944
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    :goto_0
    return-void

    .line 946
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    .line 947
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 525
    if-gtz p1, :cond_0

    .line 526
    const/4 p1, 0x1

    .line 529
    :cond_0
    iput p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mThreshold:I

    .line 530
    return-void
.end method

.method public setValidator(Lamigo/widget/AmigoAutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    .prologue
    .line 1169
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mValidator:Lamigo/widget/AmigoAutoCompleteTextView$Validator;

    .line 1170
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 1100
    invoke-direct {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->buildImeCompletions()V

    .line 1102
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    iget v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1104
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1109
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1115
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1116
    return-void

    .line 1106
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1073
    return-void
.end method
