.class public Lamigo/widget/AmigoSmartFullScreenLayout;
.super Lamigo/widget/AmigoSmartLayout;
.source "AmigoSmartFullScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static USER_DEGREE:Ljava/lang/String;


# instance fields
.field private TIME_INTERNAL:J

.field private mLayoutView:Landroid/widget/LinearLayout;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mPositiveBtn:Lamigo/widget/AmigoButton;

.field private mShowPositiveBtn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "user_full_screen_guide_degree"

    sput-object v0, Lamigo/widget/AmigoSmartFullScreenLayout;->USER_DEGREE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->TIME_INTERNAL:J

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    .line 31
    invoke-direct {p0}, Lamigo/widget/AmigoSmartFullScreenLayout;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoSmartLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->TIME_INTERNAL:J

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    .line 37
    invoke-direct {p0}, Lamigo/widget/AmigoSmartFullScreenLayout;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoSmartFullScreenLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoSmartFullScreenLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartFullScreenLayout;->onClickEvent(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Lamigo/widget/AmigoSmartFullScreenLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0}, Lamigo/widget/AmigoSmartFullScreenLayout;->initPositiveBtn()V

    .line 52
    return-void
.end method

.method private initPositiveBtn()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 121
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    .line 122
    new-instance v1, Lamigo/widget/AmigoButton;

    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lamigo/widget/AmigoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    .line 123
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    const v2, 0x909000b

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoButton;->setText(I)V

    .line 124
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v1, v4}, Lamigo/widget/AmigoButton;->setButtonStyle(I)V

    .line 126
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    new-instance v2, Lamigo/widget/AmigoSmartFullScreenLayout$1;

    invoke-direct {v2, p0}, Lamigo/widget/AmigoSmartFullScreenLayout$1;-><init>(Lamigo/widget/AmigoSmartFullScreenLayout;)V

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v0, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 144
    iget-object v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lamigo/widget/AmigoSmartFullScreenLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoSmartFullScreenLayout;->setPositiveBtnVisible(Z)V

    .line 147
    return-void
.end method

.method private onClickEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSmartFullScreenLayout;->setVisibility(I)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mGoneTime:J

    .line 158
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGoneTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mGoneTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lamigo/widget/AmigoSmartFullScreenLayout;->processUserDegree()V

    .line 160
    return-void
.end method


# virtual methods
.method public getOperateButton()Lamigo/widget/AmigoButton;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mPositiveBtn:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method protected getUserDegree()I
    .locals 5

    .prologue
    .line 83
    const/16 v1, 0x1e

    .line 85
    .local v1, "userDegree":I
    :try_start_0
    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lamigo/widget/AmigoSmartFullScreenLayout;->USER_DEGREE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lamigo/widget/AmigoSmartFullScreenLayout;->USER_DEGREE:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-boolean v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartFullScreenLayout;->onClickEvent(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected processUserDegree()V
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mGoneTime:J

    iget-wide v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mVisibleTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->TIME_INTERNAL:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 67
    iget v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mSmartLayoutDegree:I

    rsub-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    .line 68
    iget v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    if-gez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    .line 77
    :cond_0
    :goto_0
    iget v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSmartFullScreenLayout;->saveUserDegree(I)Z

    .line 78
    return-void

    .line 72
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mSmartLayoutDegree:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    .line 73
    iget v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 74
    const/16 v0, 0x63

    iput v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mUserDegree:I

    goto :goto_0
.end method

.method protected saveUserDegree(I)Z
    .locals 2
    .param p1, "userDegree"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lamigo/widget/AmigoSmartFullScreenLayout;->USER_DEGREE:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setPositiveBtnVisible(Z)V
    .locals 2
    .param p1, "flg"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    .line 113
    iget-boolean v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 165
    invoke-super {p0, p1}, Lamigo/widget/AmigoSmartLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-boolean v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mShowPositiveBtn:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout;->mLayoutView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
