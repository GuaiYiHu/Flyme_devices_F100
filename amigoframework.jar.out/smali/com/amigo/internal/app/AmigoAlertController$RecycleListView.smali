.class public Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;
.super Lamigo/widget/AmigoListView;
.source "AmigoAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;)V

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 927
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 930
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 931
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 934
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 935
    return-void
.end method
