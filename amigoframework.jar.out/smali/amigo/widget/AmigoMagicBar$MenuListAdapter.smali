.class Lamigo/widget/AmigoMagicBar$MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmigoMagicBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoMagicBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoMagicBar;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoMagicBar;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 622
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 631
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 636
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 651
    if-nez p2, :cond_0

    .line 652
    new-instance v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;-><init>(Lamigo/widget/AmigoMagicBar$MenuListAdapter;)V

    .line 653
    .local v0, "holder":Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lamigo/widget/AmigoMagicBar;->access$100(Lamigo/widget/AmigoMagicBar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x9030027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 656
    const v2, 0x90b006e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->textView:Landroid/widget/TextView;

    .line 657
    const v2, 0x90b006f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    .line 658
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 663
    :goto_0
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;
    invoke-static {v2}, Lamigo/widget/AmigoMagicBar;->access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 664
    .local v1, "menuItem":Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 690
    :goto_1
    return-object p2

    .line 660
    .end local v0    # "holder":Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;

    .restart local v0    # "holder":Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;
    goto :goto_0

    .line 667
    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 669
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 670
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 672
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 673
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->textView:Landroid/widget/TextView;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 678
    :goto_2
    invoke-interface {v1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 684
    :goto_3
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 685
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 675
    :cond_2
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    .line 681
    :cond_3
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 687
    :cond_4
    iget-object v2, v0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
