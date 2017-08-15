.class public Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "AmigoPreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public removeBorders:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    iput-boolean v0, p0, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 124
    iput-boolean v0, p0, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 125
    return-void
.end method
