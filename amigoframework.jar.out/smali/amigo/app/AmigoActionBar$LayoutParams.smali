.class public Lamigo/app/AmigoActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "AmigoActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 989
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lamigo/app/AmigoActionBar$LayoutParams;-><init>(III)V

    .line 990
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 979
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 980
    const v0, 0x800013

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 981
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 984
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 985
    iput p3, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 986
    return-void
.end method

.method public constructor <init>(Lamigo/app/AmigoActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lamigo/app/AmigoActionBar$LayoutParams;

    .prologue
    .line 993
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 995
    iget v0, p1, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 996
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 976
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 999
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoActionBar$LayoutParams;->gravity:I

    .line 1000
    return-void
.end method
