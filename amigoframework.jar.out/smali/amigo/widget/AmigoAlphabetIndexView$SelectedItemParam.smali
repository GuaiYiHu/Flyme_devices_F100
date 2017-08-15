.class Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
.super Ljava/lang/Object;
.source "AmigoAlphabetIndexView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAlphabetIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedItemParam"
.end annotation


# instance fields
.field private circleCenterX:F

.field private circleCenterY:F

.field private circleRadius:F

.field private textSize:I

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lamigo/widget/AmigoAlphabetIndexView;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    return-void
.end method

.method public constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V
    .locals 0
    .param p2, "circleCenterX"    # F
    .param p3, "circleRadius"    # F
    .param p4, "circleCenterY"    # F
    .param p5, "textX"    # F
    .param p6, "textY"    # F
    .param p7, "textSize"    # I

    .prologue
    .line 1078
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput p2, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterX:F

    .line 1080
    iput p3, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleRadius:F

    .line 1081
    iput p4, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterY:F

    .line 1082
    iput p5, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F

    .line 1083
    iput p6, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textY:F

    .line 1084
    iput p7, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textSize:I

    .line 1085
    return-void
.end method

.method static synthetic access$700(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)F
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .prologue
    .line 1066
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F

    return v0
.end method


# virtual methods
.method public getCircleCenterX()F
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterX:F

    return v0
.end method

.method public getCircleCenterY()F
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterY:F

    return v0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleRadius:F

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textSize:I

    return v0
.end method

.method public getTextX()F
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F

    return v0
.end method

.method public getTextY()F
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textY:F

    return v0
.end method

.method public setCircleCenterX(F)V
    .locals 0
    .param p1, "circleCenterX"    # F

    .prologue
    .line 1108
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterX:F

    .line 1109
    return-void
.end method

.method public setCircleCenterY(F)V
    .locals 0
    .param p1, "circleCenterY"    # F

    .prologue
    .line 1092
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterY:F

    .line 1093
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0
    .param p1, "circleRadius"    # F

    .prologue
    .line 1116
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleRadius:F

    .line 1117
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 1132
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textSize:I

    .line 1133
    return-void
.end method

.method public setTextX(F)V
    .locals 0
    .param p1, "textX"    # F

    .prologue
    .line 1124
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F

    .line 1125
    return-void
.end method

.method public setTextY(F)V
    .locals 0
    .param p1, "textY"    # F

    .prologue
    .line 1100
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textY:F

    .line 1101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedItemParam [circleCenterX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", circleRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->circleRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
