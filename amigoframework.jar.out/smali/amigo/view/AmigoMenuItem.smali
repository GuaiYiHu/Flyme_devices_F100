.class public interface abstract Lamigo/view/AmigoMenuItem;
.super Ljava/lang/Object;
.source "AmigoMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/view/AmigoMenuItem$OnActionExpandListener;,
        Lamigo/view/AmigoMenuItem$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionProvider()Lamigo/view/AmigoActionProvider;
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getAlphabeticShortcut()C
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getItemId()I
.end method

.method public abstract getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public abstract getNumericShortcut()C
.end method

.method public abstract getOrder()I
.end method

.method public abstract getSubMenu()Lamigo/view/AmigoSubMenu;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitleCondensed()Ljava/lang/CharSequence;
.end method

.method public abstract hasSubMenu()Z
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract isCheckable()Z
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setActionProvider(Lamigo/view/AmigoActionProvider;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setActionView(I)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setAlphabeticShortcut(C)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setCheckable(Z)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setChecked(Z)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setEnabled(Z)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setIcon(I)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setIntent(Landroid/content/Intent;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setNumericShortcut(C)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setOnActionExpandListener(Lamigo/view/AmigoMenuItem$OnActionExpandListener;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setOnMenuItemClickListener(Lamigo/view/AmigoMenuItem$OnMenuItemClickListener;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setShortcut(CC)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setTitle(I)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setTitleCondensed(Ljava/lang/CharSequence;)Lamigo/view/AmigoMenuItem;
.end method

.method public abstract setVisible(Z)Lamigo/view/AmigoMenuItem;
.end method
