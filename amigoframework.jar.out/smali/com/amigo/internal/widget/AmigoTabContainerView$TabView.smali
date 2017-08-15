.class Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "AmigoTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lamigo/changecolors/IChangeColors;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lamigo/app/AmigoActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;


# direct methods
.method public constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Landroid/content/Context;Lamigo/app/AmigoActionBar$Tab;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    .line 222
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    iput-object p3, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTab:Lamigo/app/AmigoActionBar$Tab;

    .line 225
    if-eqz p4, :cond_0

    .line 226
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setGravity(I)V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->update()V

    .line 233
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->changeColors()V

    .line 234
    return-void

    .line 228
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindTab(Lamigo/app/AmigoActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTab:Lamigo/app/AmigoActionBar$Tab;

    .line 238
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->update()V

    .line 239
    return-void
.end method

.method public changeColors()V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mActionBarOverlay:Z
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$300(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public getTab()Lamigo/app/AmigoActionBar$Tab;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTab:Lamigo/app/AmigoActionBar$Tab;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 331
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 332
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getLocationOnScreen([I)V

    .line 334
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getWidth()I

    move-result v5

    .line 336
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getHeight()I

    move-result v2

    .line 337
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 339
    .local v4, "screenWidth":I
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTab:Lamigo/app/AmigoActionBar$Tab;

    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 341
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 344
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$200(Lcom/amigo/internal/widget/AmigoTabContainerView;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$200(Lcom/amigo/internal/widget/AmigoTabContainerView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$200(Lcom/amigo/internal/widget/AmigoTabContainerView;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 252
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 355
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mActionBarOverlay:Z
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$300(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    if-eqz p1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public update()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 255
    iget-object v6, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTab:Lamigo/app/AmigoActionBar$Tab;

    .line 256
    .local v6, "tab":Lamigo/app/AmigoActionBar$Tab;
    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 259
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 260
    if-eqz v1, :cond_0

    .line 261
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 264
    :cond_1
    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 265
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 266
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :cond_2
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 268
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_3
    :goto_0
    return-void

    .line 272
    :cond_4
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 273
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 274
    iput-object v12, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 277
    :cond_5
    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 278
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 280
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_b

    .line 281
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 282
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 283
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 286
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {p0, v4, v9}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 288
    iput-object v4, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 290
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 298
    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_d

    .line 299
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    .line 300
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10102f5

    invoke-direct {v8, v10, v12, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    .local v8, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 303
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 306
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-virtual {p0, v8}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 308
    iput-object v8, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 310
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 318
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {v6}, Lamigo/app/AmigoActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 322
    invoke-virtual {p0, p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 292
    .end local v2    # "hasText":Z
    :cond_b
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 293
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v2, v9

    .line 297
    goto :goto_2

    .line 312
    .restart local v2    # "hasText":Z
    :cond_d
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 313
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 324
    :cond_e
    invoke-virtual {p0, v12}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    invoke-virtual {p0, v9}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
