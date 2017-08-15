.class public Lamigo/app/AmigoActionBarImpl$TabImpl;
.super Lamigo/app/AmigoActionBar$Tab;
.source "AmigoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lamigo/app/AmigoActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lamigo/app/AmigoActionBarImpl;


# direct methods
.method public constructor <init>(Lamigo/app/AmigoActionBarImpl;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-direct {p0}, Lamigo/app/AmigoActionBar$Tab;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lamigo/app/AmigoActionBar$TabListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mCallback:Lamigo/app/AmigoActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p0}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 99
    return-void
.end method

.method public setContentDescription(I)Lamigo/app/AmigoActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lamigo/app/AmigoActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lamigo/app/AmigoActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 104
    iget v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 105
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$000(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    iget v1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->updateTab(I)V

    .line 107
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lamigo/app/AmigoActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Lamigo/app/AmigoActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lamigo/app/AmigoActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 123
    iget v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 124
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$000(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    iget v1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->updateTab(I)V

    .line 126
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lamigo/app/AmigoActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 132
    iget v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 133
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$000(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    iget v1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->updateTab(I)V

    .line 135
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 144
    iput p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    .line 145
    return-void
.end method

.method public setTabListener(Lamigo/app/AmigoActionBar$TabListener;)Lamigo/app/AmigoActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Lamigo/app/AmigoActionBar$TabListener;

    .prologue
    .line 149
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mCallback:Lamigo/app/AmigoActionBar$TabListener;

    .line 150
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lamigo/app/AmigoActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 155
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 156
    return-object p0
.end method

.method public setText(I)Lamigo/app/AmigoActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Lamigo/app/AmigoActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lamigo/app/AmigoActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 162
    iget v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 163
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$000(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    iget v1, p0, Lamigo/app/AmigoActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->updateTab(I)V

    .line 165
    :cond_0
    return-object p0
.end method
