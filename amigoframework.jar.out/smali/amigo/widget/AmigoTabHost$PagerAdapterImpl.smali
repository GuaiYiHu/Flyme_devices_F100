.class Lamigo/widget/AmigoTabHost$PagerAdapterImpl;
.super Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;
.source "AmigoTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterImpl"
.end annotation


# instance fields
.field public pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lamigo/widget/AmigoTabHost;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoTabHost;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "mListViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->this$0:Lamigo/widget/AmigoTabHost;

    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;-><init>()V

    .line 210
    iput-object p2, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->pages:Ljava/util/ArrayList;

    .line 211
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->removeView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 220
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 229
    check-cast p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->addView(Landroid/view/View;I)V

    .line 230
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 235
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 240
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 249
    return-void
.end method
