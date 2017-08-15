.class public abstract Lamigo/view/AmigoActionProvider;
.super Ljava/lang/Object;
.source "AmigoActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/view/AmigoActionProvider$VisibilityListener;,
        Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider"


# instance fields
.field private mSubUiVisibilityListener:Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lamigo/view/AmigoActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Lamigo/view/AmigoMenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Lamigo/view/AmigoMenuItem;

    .prologue
    .line 54
    invoke-virtual {p0}, Lamigo/view/AmigoActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Lamigo/view/AmigoSubMenu;)V
    .locals 0
    .param p1, "AmigoSubMenu"    # Lamigo/view/AmigoSubMenu;

    .prologue
    .line 155
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lamigo/view/AmigoActionProvider;->mVisibilityListener:Lamigo/view/AmigoActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/view/AmigoActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lamigo/view/AmigoActionProvider;->mVisibilityListener:Lamigo/view/AmigoActionProvider$VisibilityListener;

    invoke-virtual {p0}, Lamigo/view/AmigoActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lamigo/view/AmigoActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public setSubUiVisibilityListener(Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;

    .prologue
    .line 173
    iput-object p1, p0, Lamigo/view/AmigoActionProvider;->mSubUiVisibilityListener:Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;

    .line 174
    return-void
.end method

.method public setVisibilityListener(Lamigo/view/AmigoActionProvider$VisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Lamigo/view/AmigoActionProvider$VisibilityListener;

    .prologue
    .line 184
    iget-object v0, p0, Lamigo/view/AmigoActionProvider;->mVisibilityListener:Lamigo/view/AmigoActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "ActionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iput-object p1, p0, Lamigo/view/AmigoActionProvider;->mVisibilityListener:Lamigo/view/AmigoActionProvider$VisibilityListener;

    .line 190
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lamigo/view/AmigoActionProvider;->mSubUiVisibilityListener:Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lamigo/view/AmigoActionProvider;->mSubUiVisibilityListener:Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lamigo/view/AmigoActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 167
    :cond_0
    return-void
.end method
