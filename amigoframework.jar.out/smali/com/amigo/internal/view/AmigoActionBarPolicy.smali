.class public Lcom/amigo/internal/view/AmigoActionBarPolicy;
.super Ljava/lang/Object;
.source "AmigoActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amigo/internal/view/AmigoActionBarPolicy;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Lcom/amigo/internal/view/AmigoActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amigo/internal/view/AmigoActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x9050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v2, p0, Lcom/amigo/internal/view/AmigoActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    const v5, 0x9010066

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 59
    .local v1, "height":I
    if-nez v1, :cond_0

    .line 60
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amigo/internal/view/AmigoActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
