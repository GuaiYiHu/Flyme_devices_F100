.class public Lamigo/widget/AmigoViewPagerEffect;
.super Ljava/lang/Object;
.source "AmigoViewPagerEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoViewPagerEffect$State;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final DISTANCE:F

.field private final TAG:Ljava/lang/String;

.field private mObject:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lamigo/widget/AmigoViewPagerEffect$State;

.field private oldPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "AmigoViewPagerEffect->"

    iput-object v0, p0, Lamigo/widget/AmigoViewPagerEffect;->TAG:Ljava/lang/String;

    .line 21
    const/high16 v0, 0x42040000    # 33.0f

    iput v0, p0, Lamigo/widget/AmigoViewPagerEffect;->DISTANCE:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoViewPagerEffect;->DEBUG:Z

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoViewPagerEffect;->mObject:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private effectLeft(Landroid/view/View;F)V
    .locals 6
    .param p1, "left"    # Landroid/view/View;
    .param p2, "effectOffset"    # F

    .prologue
    .line 81
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 82
    check-cast v2, Landroid/widget/ListView;

    .line 83
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 84
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 86
    .local v3, "tran":F
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_0

    .line 87
    neg-float v4, p2

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x42040000    # 33.0f

    mul-float v3, v4, v5

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "tran":F
    :cond_1
    return-void
.end method

.method private effectRight(Landroid/view/View;F)V
    .locals 6
    .param p1, "right"    # Landroid/view/View;
    .param p2, "effectOffset"    # F

    .prologue
    .line 95
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 96
    check-cast v2, Landroid/widget/ListView;

    .line 97
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 98
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 100
    .local v3, "tran":F
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_0

    .line 101
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x42040000    # 33.0f

    mul-float v3, v4, v5

    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "tran":F
    :cond_1
    return-void
.end method

.method private revert(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 110
    check-cast v2, Landroid/widget/ListView;

    .line 111
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 112
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method


# virtual methods
.method public effect(IIFI)V
    .locals 8
    .param p1, "currentItem"    # I
    .param p2, "position"    # I
    .param p3, "positionOffset"    # F
    .param p4, "positionOffsetPixels"    # I

    .prologue
    const/4 v7, 0x0

    .line 39
    const-string v4, "AmigoViewPagerEffect->"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v4, "AmigoViewPagerEffect->"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v4, "AmigoViewPagerEffect->"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionOffset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v4, "AmigoViewPagerEffect->"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mObject size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lamigo/widget/AmigoViewPagerEffect;->mObject:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->IDLE:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_0

    cmpl-float v4, p3, v7

    if-lez v4, :cond_0

    .line 46
    iput p1, p0, Lamigo/widget/AmigoViewPagerEffect;->oldPage:I

    .line 47
    iget v4, p0, Lamigo/widget/AmigoViewPagerEffect;->oldPage:I

    if-ne p2, v4, :cond_4

    sget-object v4, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    :goto_0
    iput-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 50
    :cond_0
    iget v4, p0, Lamigo/widget/AmigoViewPagerEffect;->oldPage:I

    if-ne p2, v4, :cond_5

    const/4 v1, 0x1

    .line 51
    .local v1, "goingLeft":Z
    :goto_1
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_6

    .line 52
    sget-object v4, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    iput-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 57
    :cond_1
    :goto_2
    move v0, p3

    .line 58
    .local v0, "effectOffset":F
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_7

    .line 59
    const-string v4, "AmigoViewPagerEffect->"

    const-string v5, "going left: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v4, 0x3f7f7cee    # 0.998f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    :cond_2
    :goto_3
    invoke-virtual {p0, p2}, Lamigo/widget/AmigoViewPagerEffect;->findViewFromObject(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "left":Landroid/view/View;
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoViewPagerEffect;->findViewFromObject(I)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "right":Landroid/view/View;
    invoke-direct {p0, v2, v0}, Lamigo/widget/AmigoViewPagerEffect;->effectLeft(Landroid/view/View;F)V

    .line 71
    invoke-direct {p0, v3, v0}, Lamigo/widget/AmigoViewPagerEffect;->effectRight(Landroid/view/View;F)V

    .line 73
    cmpl-float v4, p3, v7

    if-nez v4, :cond_3

    .line 74
    sget-object v4, Lamigo/widget/AmigoViewPagerEffect$State;->IDLE:Lamigo/widget/AmigoViewPagerEffect$State;

    iput-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 75
    invoke-direct {p0, v3}, Lamigo/widget/AmigoViewPagerEffect;->revert(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, v2}, Lamigo/widget/AmigoViewPagerEffect;->revert(Landroid/view/View;)V

    .line 78
    :cond_3
    return-void

    .line 47
    .end local v0    # "effectOffset":F
    .end local v1    # "goingLeft":Z
    .end local v2    # "left":Landroid/view/View;
    .end local v3    # "right":Landroid/view/View;
    :cond_4
    sget-object v4, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    goto :goto_0

    .line 50
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 53
    .restart local v1    # "goingLeft":Z
    :cond_6
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 54
    sget-object v4, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    iput-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    goto :goto_2

    .line 63
    .restart local v0    # "effectOffset":F
    :cond_7
    iget-object v4, p0, Lamigo/widget/AmigoViewPagerEffect;->mState:Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v5, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    if-ne v4, v5, :cond_2

    .line 64
    const-string v4, "AmigoViewPagerEffect->"

    const-string v5, "going right: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public findViewFromObject(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lamigo/widget/AmigoViewPagerEffect;->mObject:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Landroid/view/View;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0
.end method

.method public getObjectForPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lamigo/widget/AmigoViewPagerEffect;->mObject:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setObjectForPosition(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 118
    instance-of v1, p1, Lamigo/widget/AmigoListView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lamigo/widget/AmigoListView;

    .line 122
    .local v0, "listView":Lamigo/widget/AmigoListView;
    invoke-virtual {v0, v2}, Lamigo/widget/AmigoListView;->setViewPagerEffectEnable(Z)V

    .line 124
    invoke-virtual {v0}, Lamigo/widget/AmigoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoListView;->setDividerHeight(I)V

    .line 127
    invoke-virtual {v0, v2}, Lamigo/widget/AmigoListView;->setModifiedDiveder(Z)V

    .line 130
    .end local v0    # "listView":Lamigo/widget/AmigoListView;
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoViewPagerEffect;->mObject:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method
