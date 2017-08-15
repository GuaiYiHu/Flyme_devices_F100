.class Lamigo/widget/AmigoNumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "AmigoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0

    .prologue
    .line 2210
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 2225
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v11}, Lamigo/widget/AmigoNumberPicker;->access$1000(Lamigo/widget/AmigoNumberPicker;)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    .line 2226
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2227
    .local v3, "filtered":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 2228
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2231
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2234
    .local v7, "result":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2267
    .end local v7    # "result":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2237
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    # invokes: Lamigo/widget/AmigoNumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v11, v7}, Lamigo/widget/AmigoNumberPicker;->access$1100(Lamigo/widget/AmigoNumberPicker;Ljava/lang/String;)I

    move-result v9

    .line 2245
    .local v9, "val":I
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    iget-object v12, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mMaxValue:I
    invoke-static {v12}, Lamigo/widget/AmigoNumberPicker;->access$1200(Lamigo/widget/AmigoNumberPicker;)I

    move-result v12

    # invokes: Lamigo/widget/AmigoNumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v11, v12}, Lamigo/widget/AmigoNumberPicker;->access$1300(Lamigo/widget/AmigoNumberPicker;I)Ljava/lang/String;

    move-result-object v4

    .line 2246
    .local v4, "formatMaxValue":Ljava/lang/String;
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mMaxValue:I
    invoke-static {v11}, Lamigo/widget/AmigoNumberPicker;->access$1200(Lamigo/widget/AmigoNumberPicker;)I

    move-result v11

    if-gt v9, v11, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 2248
    :cond_2
    const-string v7, ""

    goto :goto_0

    :cond_3
    move-object v7, v3

    .line 2250
    goto :goto_0

    .line 2253
    .end local v3    # "filtered":Ljava/lang/CharSequence;
    .end local v4    # "formatMaxValue":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/String;
    .end local v9    # "val":I
    :cond_4
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2254
    .restart local v3    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2255
    const-string v7, ""

    goto :goto_0

    .line 2257
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2259
    .restart local v7    # "result":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2260
    .local v8, "str":Ljava/lang/String;
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v11}, Lamigo/widget/AmigoNumberPicker;->access$1000(Lamigo/widget/AmigoNumberPicker;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v9, v2, v5

    .line 2261
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 2262
    .local v10, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2263
    iget-object v11, p0, Lamigo/widget/AmigoNumberPicker$InputTextFilter;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    # invokes: Lamigo/widget/AmigoNumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v11, v12, v13}, Lamigo/widget/AmigoNumberPicker;->access$1400(Lamigo/widget/AmigoNumberPicker;II)V

    .line 2264
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v0, p5

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_0

    .line 2260
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2267
    .end local v9    # "val":Ljava/lang/String;
    .end local v10    # "valLowerCase":Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2220
    # getter for: Lamigo/widget/AmigoNumberPicker;->DIGIT_CHARACTERS:[C
    invoke-static {}, Lamigo/widget/AmigoNumberPicker;->access$900()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2215
    const/4 v0, 0x1

    return v0
.end method
