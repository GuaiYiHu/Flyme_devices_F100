.class public Lamigo/widget/AmigoTabHost;
.super Landroid/widget/TabHost;
.source "AmigoTabHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;,
        Lamigo/widget/AmigoTabHost$PagerAdapterImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoTabHost"


# instance fields
.field private mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

.field private mContext:Landroid/content/Context;

.field private mPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x10102f4

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoTabHost;->mPageList:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lamigo/widget/AmigoTabHost;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTabHost;

    .prologue
    .line 49
    iget-object v0, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$202(Lamigo/widget/AmigoTabHost;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoTabHost;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lamigo/widget/AmigoTabHost;->mCurrentTab:I

    return p1
.end method

.method static synthetic access$300(Lamigo/widget/AmigoTabHost;)Lamigo/widget/AmigoTabWidget;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTabHost;

    .prologue
    .line 49
    iget-object v0, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 9
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 145
    const-string v5, "mIndicatorStrategy"

    invoke-static {p1, v5}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "mIndicatorStrategy":Ljava/lang/Object;
    const-string v5, "mContentStrategy"

    invoke-static {p1, v5}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "mContentStrategy":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 149
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you must specify a way to create the tab indicator."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_0
    if-nez v1, :cond_1

    .line 153
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you must specify a way to create the tab content"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.widget.TabHost.ViewIdContentStrategy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ViewIdContentStrategy is not supported by AmigoTabHost"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_2
    const-string v5, "createIndicatorView"

    invoke-static {v2, v5, v7, v7}, Lcom/amigo/internal/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 161
    .local v4, "tabIndicator":Landroid/view/View;
    const-string v5, "mTabKeyListener"

    invoke-static {p0, v5}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v5, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    invoke-virtual {v5, v4}, Lamigo/widget/AmigoTabWidget;->addView(Landroid/view/View;)V

    .line 166
    const-string v5, "mTabSpecs"

    invoke-static {p0, v5}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 167
    .local v3, "mTabSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TabHost$TabSpec;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v5, "getContentView"

    invoke-static {v1, v5, v7, v7}, Lcom/amigo/internal/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 170
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 171
    const-string v5, "AmigoTabHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentView type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    iget-object v5, p0, Lamigo/widget/AmigoTabHost;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Lamigo/widget/AmigoTabHost;->mPagerAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->notifyDataSetChanged()V

    .line 175
    iget v5, p0, Lamigo/widget/AmigoTabHost;->mCurrentTab:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 176
    invoke-virtual {p0, v8}, Lamigo/widget/AmigoTabHost;->setCurrentTab(I)V

    .line 177
    iput v8, p0, Lamigo/widget/AmigoTabHost;->mCurrentTab:I

    .line 179
    :cond_4
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 187
    if-ltz p1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    invoke-virtual {v0}, Lamigo/widget/AmigoTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoTabHost;->mCurrentTab:I

    if-eq p1, v0, :cond_0

    .line 193
    const-string v0, "AmigoTabHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lamigo/widget/AmigoTabHost;->mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoTabWidget;->setIndicatorBackgroundColor(I)V

    .line 204
    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 90
    const v1, 0x1020013

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoTabWidget;

    iput-object v1, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    .line 91
    const-string v1, "mTabWidget"

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    invoke-static {p0, v1, v2}, Lcom/amigo/internal/util/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your AmigoTabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    new-instance v2, Lamigo/widget/AmigoTabHost$1;

    invoke-direct {v2, p0}, Lamigo/widget/AmigoTabHost$1;-><init>(Lamigo/widget/AmigoTabHost;)V

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoTabWidget;->setTabSelectionListener(Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;)V

    .line 101
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;

    move-result-object v0

    .line 102
    .local v0, "abp":Lcom/amigo/internal/view/AmigoActionBarPolicy;
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoTabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const-string v1, "mTabKeyListener"

    new-instance v2, Lamigo/widget/AmigoTabHost$2;

    invoke-direct {v2, p0}, Lamigo/widget/AmigoTabHost$2;-><init>(Lamigo/widget/AmigoTabHost;)V

    invoke-static {p0, v1, v2}, Lcom/amigo/internal/util/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 123
    const-string v1, "mTabContent"

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-static {p0, v1, v2}, Lcom/amigo/internal/util/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your AmigoTabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 130
    new-instance v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lamigo/widget/AmigoTabHost;->mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    .line 131
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mPageList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lamigo/widget/AmigoTabHost$PagerAdapterImpl;-><init>(Lamigo/widget/AmigoTabHost;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lamigo/widget/AmigoTabHost;->mPagerAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    .line 135
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    iget-object v2, p0, Lamigo/widget/AmigoTabHost;->mPagerAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setAdapter(Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;)V

    .line 136
    iget-object v1, p0, Lamigo/widget/AmigoTabHost;->mViewPager:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    new-instance v2, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;-><init>(Lamigo/widget/AmigoTabHost;Lamigo/widget/AmigoTabHost$1;)V

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setOnPageChangeListener(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;)V

    .line 137
    return-void
.end method
