.class public interface abstract Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;
.super Ljava/lang/Object;
.source "AmigoMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/view/menu/AmigoMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
.end method

.method public abstract initialize(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;I)V
.end method

.method public abstract prefersCondensedTitle()Z
.end method

.method public abstract setCheckable(Z)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcut(ZC)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract showsIcon()Z
.end method
