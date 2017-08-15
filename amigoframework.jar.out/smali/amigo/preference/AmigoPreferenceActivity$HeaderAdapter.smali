.class Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AmigoPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lamigo/preference/AmigoPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 245
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 253
    if-nez p2, :cond_0

    .line 254
    iget-object v4, p0, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x903000c

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 256
    .local v3, "view":Landroid/view/View;
    new-instance v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lamigo/preference/AmigoPreferenceActivity$1;)V

    .line 257
    .local v1, "holder":Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 258
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 259
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 260
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 267
    :goto_0
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/preference/AmigoPreferenceActivity$Header;

    .line 268
    .local v0, "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    iget-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Lamigo/preference/AmigoPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Lamigo/preference/AmigoPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Lamigo/preference/AmigoPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 271
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    iget-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_1
    return-object v3

    .line 262
    .end local v0    # "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    .end local v1    # "holder":Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 263
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1    # "holder":Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 275
    .restart local v0    # "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, v1, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
