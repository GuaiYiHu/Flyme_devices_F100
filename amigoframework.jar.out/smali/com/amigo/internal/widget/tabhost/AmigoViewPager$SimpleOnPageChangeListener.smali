.class public Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "AmigoViewPager.java"

# interfaces
.implements Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 303
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 293
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 298
    return-void
.end method
