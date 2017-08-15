.class public Lcom/amigo/internal/app/AmigoAlertController$AlertParams;
.super Ljava/lang/Object;
.source "AmigoAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/app/AmigoAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelIcon:Landroid/graphics/drawable/Drawable;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mHasCancelIcon:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonStyle:I

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/amigo/internal/app/AmigoAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonStyle:I

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconId:I

    .line 949
    iput v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconAttrId:I

    .line 971
    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    .line 983
    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 985
    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mHasCancelIcon:Z

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    .line 1007
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1008
    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelable:Z

    .line 1009
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1010
    return-void
.end method

.method private createListView(Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    const v4, 0x90b0038

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1092
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mListLayout:I
    invoke-static {p1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1000(Lcom/amigo/internal/app/AmigoAlertController;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    .line 1094
    .local v6, "listView":Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;
    invoke-virtual {v6, v10}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1098
    const v8, 0x90b0038

    .line 1100
    .local v8, "textViewId":I
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 1101
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 1102
    new-instance v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1100(Lcom/amigo/internal/app/AmigoAlertController;)I

    move-result v3

    iget-object v5, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$1;-><init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;)V

    .line 1153
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/amigo/internal/app/AmigoAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/amigo/internal/app/AmigoAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1160
    :cond_0
    # setter for: Lcom/amigo/internal/app/AmigoAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->access$1402(Lcom/amigo/internal/app/AmigoAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1161
    iget v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    # setter for: Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1502(Lcom/amigo/internal/app/AmigoAlertController;I)I

    .line 1163
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1164
    new-instance v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;-><init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Lcom/amigo/internal/app/AmigoAlertController;)V

    invoke-virtual {v6, v1}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1185
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1186
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1189
    :cond_2
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1190
    invoke-virtual {v6, v10}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setChoiceMode(I)V

    .line 1194
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1195
    # setter for: Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/amigo/internal/app/AmigoAlertController;->access$1602(Lcom/amigo/internal/app/AmigoAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1196
    return-void

    .line 1117
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;-><init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/amigo/internal/app/AmigoAlertController$RecycleListView;Lcom/amigo/internal/app/AmigoAlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1143
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1200(Lcom/amigo/internal/app/AmigoAlertController;)I

    move-result v2

    .line 1144
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1145
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1143
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1300(Lcom/amigo/internal/app/AmigoAlertController;)I

    move-result v2

    goto :goto_3

    .line 1145
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 1148
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v10, [Ljava/lang/String;

    iget-object v9, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v9, v7, v5

    new-array v9, v10, [I

    aput v4, v9, v5

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1172
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1173
    new-instance v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;-><init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;Lcom/amigo/internal/app/AmigoAlertController;)V

    invoke-virtual {v6, v1}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1191
    :cond_a
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1192
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 9
    .param p1, "dialog"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x3

    const/4 v3, 0x0

    .line 1013
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1014
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1029
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v7, v0, v1, v3}, Lcom/amigo/internal/app/AmigoAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1037
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amigo/internal/app/AmigoAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v6, v0, v1, v3}, Lcom/amigo/internal/app/AmigoAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1044
    :cond_4
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1045
    invoke-virtual {p1, v8}, Lcom/amigo/internal/app/AmigoAlertController;->setInverseBackgroundForced(Z)V

    .line 1049
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1050
    :cond_6
    invoke-direct {p0, p1}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->createListView(Lcom/amigo/internal/app/AmigoAlertController;)V

    .line 1052
    :cond_7
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1053
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    .line 1054
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/app/AmigoAlertController;->setView(Landroid/view/View;IIII)V

    .line 1069
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mHasCancelIcon:Z

    if-eqz v0, :cond_a

    .line 1071
    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z
    invoke-static {}, Lcom/amigo/internal/app/AmigoAlertController;->access$900()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 1073
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setHasCancelIcon(Z)V

    .line 1078
    :goto_2
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1079
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setCancelIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1084
    :cond_a
    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z
    invoke-static {}, Lcom/amigo/internal/app/AmigoAlertController;->access$900()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1085
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonStyle:I

    invoke-virtual {p1, v7, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setButtonStyle(II)V

    .line 1086
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonStyle:I

    invoke-virtual {p1, v6, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setButtonStyle(II)V

    .line 1089
    :cond_b
    return-void

    .line 1016
    :cond_c
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1017
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1019
    :cond_d
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1020
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    :cond_e
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_f

    .line 1023
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(I)V

    .line 1025
    :cond_f
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconAttrId:I

    if-lez v0, :cond_0

    .line 1026
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1057
    :cond_10
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1075
    :cond_11
    invoke-virtual {p1, v8}, Lcom/amigo/internal/app/AmigoAlertController;->setHasCancelIcon(Z)V

    goto :goto_2
.end method
