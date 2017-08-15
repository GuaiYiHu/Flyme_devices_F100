.class Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;
.super Ljava/lang/Object;
.source "AmigoAlphabetIndexView.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAlphabetIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTypeEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAlphabetIndexView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeCicleCenterY(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F
    .locals 3
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1165
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterY()F

    move-result v1

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterY()F

    move-result v2

    sub-float v0, v1, v2

    .line 1166
    .local v0, "diff":F
    mul-float v1, v0, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterY()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method private computeCircleCenterX(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F
    .locals 3
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1186
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterX()F

    move-result v1

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterX()F

    move-result v2

    sub-float v0, v1, v2

    .line 1187
    .local v0, "diff":F
    mul-float v1, v0, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterX()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method private computeCircleRadius(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F
    .locals 3
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1181
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v1

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    sub-float v0, v1, v2

    .line 1182
    .local v0, "diff":F
    mul-float v1, v0, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method private computeTextSize(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)I
    .locals 4
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1170
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v2

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    sub-int v0, v2, v3

    .line 1171
    .local v0, "diff":I
    int-to-float v2, v0

    mul-float/2addr v2, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1172
    .local v1, "textSize":I
    return v1
.end method

.method private computeTextX(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F
    .locals 3
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1176
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextX()F

    move-result v1

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextX()F

    move-result v2

    sub-float v0, v1, v2

    .line 1177
    .local v0, "diff":F
    mul-float v1, v0, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextX()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method private computeTextY(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F
    .locals 3
    .param p1, "start"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p2, "end"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "fraction"    # F

    .prologue
    .line 1160
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    sub-float v0, v1, v2

    .line 1161
    .local v0, "diff":F
    mul-float v1, v0, p3

    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public evaluate(FLamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .param p3, "endValue"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .prologue
    .line 1148
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeCircleCenterX(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F

    move-result v2

    .line 1149
    .local v2, "circleCenterX":F
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeCircleRadius(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F

    move-result v3

    .line 1150
    .local v3, "circleRadius":F
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeTextX(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F

    move-result v5

    .line 1151
    .local v5, "textX":F
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeTextSize(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)I

    move-result v7

    .line 1152
    .local v7, "textSize":I
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeTextY(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F

    move-result v6

    .line 1153
    .local v6, "textY":F
    invoke-direct {p0, p2, p3, p1}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->computeCicleCenterY(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;F)F

    move-result v4

    .line 1154
    .local v4, "circleCenterY":F
    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;-><init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V

    .line 1156
    .local v0, "value":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 1143
    check-cast p2, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;->evaluate(FLamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    return-object v0
.end method
