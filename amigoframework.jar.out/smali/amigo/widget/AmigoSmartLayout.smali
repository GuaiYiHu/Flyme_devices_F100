.class public abstract Lamigo/widget/AmigoSmartLayout;
.super Landroid/widget/LinearLayout;
.source "AmigoSmartLayout.java"


# static fields
.field public static final HIGH_DEGREE:I = 0x5a

.field public static final LOW_DEGREE:I = 0x1e

.field public static final MIDDLE_DEGREE:I = 0x3c

.field public static final X_HIGH_DEGREE:I = 0x64


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mGoneTime:J

.field protected mSmartLayoutDegree:I

.field protected mUserDegree:I

.field protected mVisibleTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    .line 45
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartLayout;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    .line 51
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartLayout;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lamigo/widget/AmigoSmartLayout;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lamigo/widget/AmigoSmartLayout;->getUserDegree()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    .line 63
    return-void
.end method


# virtual methods
.method public getSmartDegree()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    return v0
.end method

.method protected abstract getUserDegree()I
.end method

.method public getVisibleTime()J
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lamigo/widget/AmigoSmartLayout;->mGoneTime:J

    iget-wide v2, p0, Lamigo/widget/AmigoSmartLayout;->mVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 87
    iget-wide v0, p0, Lamigo/widget/AmigoSmartLayout;->mGoneTime:J

    iget-wide v2, p0, Lamigo/widget/AmigoSmartLayout;->mVisibleTime:J

    sub-long/2addr v0, v2

    .line 89
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 119
    iget v0, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    if-ge v0, v1, :cond_0

    .line 120
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSmartLayout;->setVisibility(I)V

    .line 122
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/widget/AmigoSmartLayout;->mVisibleTime:J

    .line 123
    return-void
.end method

.method protected abstract processUserDegree()V
.end method

.method protected abstract saveUserDegree(I)Z
.end method

.method public setSmartDegree(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 70
    iput p1, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    .line 71
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    :cond_0
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lamigo/widget/AmigoSmartLayout;->getUserDegree()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    .line 101
    iget v0, p0, Lamigo/widget/AmigoSmartLayout;->mSmartLayoutDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartLayout;->mUserDegree:I

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/widget/AmigoSmartLayout;->mVisibleTime:J

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
