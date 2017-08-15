.class public Lamigo/app/AmigoProgressDialog;
.super Lamigo/app/AmigoAlertDialog;
.source "AmigoProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lamigo/widget/AmigoProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    .line 61
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->initFormats()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    .line 66
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->initFormats()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lamigo/app/AmigoProgressDialog;)Lamigo/widget/AmigoProgressBar;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoProgressDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/app/AmigoProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoProgressDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoProgressDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lamigo/app/AmigoProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoProgressDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoProgressDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 72
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 73
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lamigo/app/AmigoProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lamigo/app/AmigoProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lamigo/app/AmigoProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lamigo/app/AmigoProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 82
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lamigo/app/AmigoProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lamigo/app/AmigoProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lamigo/app/AmigoProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 87
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lamigo/app/AmigoProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lamigo/app/AmigoProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lamigo/app/AmigoProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 93
    new-instance v0, Lamigo/app/AmigoProgressDialog;

    invoke-direct {v0, p0}, Lamigo/app/AmigoProgressDialog;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "dialog":Lamigo/app/AmigoProgressDialog;
    invoke-virtual {v0, p2}, Lamigo/app/AmigoProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0, p3}, Lamigo/app/AmigoProgressDialog;->setIndeterminate(Z)V

    .line 97
    invoke-virtual {v0, p4}, Lamigo/app/AmigoProgressDialog;->setCancelable(Z)V

    .line 98
    invoke-virtual {v0, p5}, Lamigo/app/AmigoProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 99
    invoke-virtual {v0}, Lamigo/app/AmigoProgressDialog;->show()V

    .line 100
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoProgressBar;->getMax()I

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoProgressBar;->getProgress()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->incrementProgressBy(I)V

    .line 252
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lamigo/app/AmigoProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->incrementSecondaryProgressBy(I)V

    .line 261
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lamigo/app/AmigoProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoProgressBar;->isIndeterminate()Z

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const v5, 0x90b0014

    .line 105
    invoke-virtual {p0}, Lamigo/app/AmigoProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 115
    new-instance v3, Lamigo/app/AmigoProgressDialog$1;

    invoke-direct {v3, p0}, Lamigo/app/AmigoProgressDialog$1;-><init>(Lamigo/app/AmigoProgressDialog;)V

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 140
    const v3, 0x9030007

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoProgressBar;

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    .line 142
    const v3, 0x90b0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 143
    const v3, 0x90b0016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 145
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :cond_0
    invoke-virtual {p0, v2}, Lamigo/app/AmigoProgressDialog;->setView(Landroid/view/View;)V

    .line 160
    :goto_0
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mMax:I

    if-lez v3, :cond_1

    .line 161
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setMax(I)V

    .line 163
    :cond_1
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressVal:I

    if-lez v3, :cond_2

    .line 164
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setProgress(I)V

    .line 166
    :cond_2
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_3

    .line 167
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setSecondaryProgress(I)V

    .line 169
    :cond_3
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_4

    .line 170
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->incrementProgressBy(I)V

    .line 172
    :cond_4
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_5

    .line 173
    iget v3, p0, Lamigo/app/AmigoProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 175
    :cond_5
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 176
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_6
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 179
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_7
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    .line 182
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    :cond_8
    iget-boolean v3, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lamigo/app/AmigoProgressDialog;->setIndeterminate(Z)V

    .line 185
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 186
    invoke-super {p0, p1}, Lamigo/app/AmigoAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 187
    return-void

    .line 151
    .end local v2    # "view":Landroid/view/View;
    :cond_9
    const v3, 0x9030008

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 152
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoProgressBar;

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    .line 153
    const v3, 0x90b0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lamigo/app/AmigoProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 154
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    iget-object v3, p0, Lamigo/app/AmigoProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_a
    invoke-virtual {p0, v2}, Lamigo/app/AmigoProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onStart()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/app/AmigoProgressDialog;->mHasStarted:Z

    .line 193
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onStop()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoProgressDialog;->mHasStarted:Z

    .line 199
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setIndeterminate(Z)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-boolean p1, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setMax(I)V

    .line 243
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iput p1, p0, Lamigo/app/AmigoProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_1

    .line 301
    iget v0, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    invoke-super {p0, p1}, Lamigo/app/AmigoAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 202
    iget-boolean v0, p0, Lamigo/app/AmigoProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setProgress(I)V

    .line 204
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iput p1, p0, Lamigo/app/AmigoProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 268
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 326
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 337
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 338
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 339
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 312
    iput p1, p0, Lamigo/app/AmigoProgressDialog;->mProgressStyle:I

    .line 313
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoProgressBar;->setSecondaryProgress(I)V

    .line 213
    invoke-direct {p0}, Lamigo/app/AmigoProgressDialog;->onProgressChanged()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iput p1, p0, Lamigo/app/AmigoProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
