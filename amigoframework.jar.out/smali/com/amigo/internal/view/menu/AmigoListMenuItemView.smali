.class public Lcom/amigo/internal/view/menu/AmigoListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "AmigoListMenuItemView.java"

# interfaces
.implements Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTextAppearance:I

    .line 46
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 238
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 240
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->addView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x903001f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 226
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->addView(Landroid/view/View;I)V

    .line 227
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 231
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 233
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->addView(Landroid/view/View;)V

    .line 234
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 79
    iput p2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mMenuType:I

    .line 81
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setVisibility(I)V

    .line 83
    invoke-virtual {p1, p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getTitleForItemView(Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setCheckable(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setShortcut(ZC)V

    .line 86
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->setEnabled(Z)V

    .line 88
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    const v0, 0x90b001c

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 70
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    :cond_0
    const v0, 0x90b004c

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 211
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 214
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 215
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 216
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 219
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 220
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v3, 0x8

    .line 111
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->insertRadioButton()V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 125
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 134
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 135
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 138
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 143
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 144
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 127
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 128
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->insertCheckBox()V

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 131
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 137
    goto :goto_2

    .line 147
    :cond_7
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    .line 148
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 149
    :cond_8
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 157
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->insertRadioButton()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 169
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 170
    return-void

    .line 163
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->insertCheckBox()V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mPreserveIconSpacing:Z

    .line 92
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 186
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 207
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 185
    goto :goto_0

    .line 190
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 194
    :cond_4
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 195
    invoke-direct {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->insertIconView()V

    .line 198
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 199
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 205
    :cond_8
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 173
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 175
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mItemData:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_1
    return-void

    .line 173
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
