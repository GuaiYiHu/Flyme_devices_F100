.class public Lamigo/widget/AmigoStretchAnimationa$ChildView;
.super Ljava/lang/Object;
.source "AmigoStretchAnimationa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoStretchAnimationa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildView"
.end annotation


# instance fields
.field final MULTIPLE:I

.field mChild:Landroid/view/View;

.field mCurHeight:I

.field mDHeight:I

.field mOriginLPheight:I

.field mRawHeight:I

.field mToHeight:I

.field final synthetic this$0:Lamigo/widget/AmigoStretchAnimationa;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoStretchAnimationa;Landroid/view/View;III)V
    .locals 3
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "count"    # I
    .param p5, "originHeight"    # I

    .prologue
    .line 143
    iput-object p1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v0, 0xa

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->MULTIPLE:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mOriginLPheight:I

    .line 144
    iput-object p2, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    .line 146
    iput p5, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mOriginLPheight:I

    .line 147
    const-string v0, "AmigoStretchAnimationa->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOriginLPheight->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mOriginLPheight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    .line 150
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0xa

    mul-int/2addr v1, p3

    div-int/2addr v1, p4

    sub-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mToHeight:I

    .line 151
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mToHeight:I

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mDHeight:I

    .line 152
    return-void
.end method


# virtual methods
.method public changeChildLayout()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    if-eq v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public computeCurHeight(I)V
    .locals 2
    .param p1, "deltaY"    # I

    .prologue
    .line 172
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mToHeight:I

    if-gt v0, v1, :cond_0

    .line 173
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 174
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mDHeight:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    .line 178
    :goto_0
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mToHeight:I

    if-le v0, v1, :cond_0

    .line 179
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mToHeight:I

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    goto :goto_0
.end method

.method public revertLayoutParams()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mOriginLPheight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method
