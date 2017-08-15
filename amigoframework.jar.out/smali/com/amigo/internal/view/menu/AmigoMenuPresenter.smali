.class public interface abstract Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
.super Ljava/lang/Object;
.source "AmigoMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcom/amigo/internal/view/menu/AmigoMenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
