.class public interface abstract Lamigo/view/AmigoContextMenu;
.super Ljava/lang/Object;
.source "AmigoContextMenu.java"

# interfaces
.implements Lamigo/view/AmigoMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/view/AmigoContextMenu$ContextMenuInfo;
    }
.end annotation


# virtual methods
.method public abstract clearHeader()V
.end method

.method public abstract setHeaderIcon(I)Lamigo/view/AmigoContextMenu;
.end method

.method public abstract setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lamigo/view/AmigoContextMenu;
.end method

.method public abstract setHeaderTitle(I)Lamigo/view/AmigoContextMenu;
.end method

.method public abstract setHeaderTitle(Ljava/lang/CharSequence;)Lamigo/view/AmigoContextMenu;
.end method

.method public abstract setHeaderView(Landroid/view/View;)Lamigo/view/AmigoContextMenu;
.end method
