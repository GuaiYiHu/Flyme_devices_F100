.class Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "AmigoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;


# direct methods
.method private constructor <init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;)V
    .locals 0

    .prologue
    .line 2795
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;Lcom/amigo/internal/widget/tabhost/AmigoViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
    .param p2, "x1"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$1;

    .prologue
    .line 2795
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;-><init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->dataSetChanged()V

    .line 2799
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->dataSetChanged()V

    .line 2803
    return-void
.end method
