.class public Lamigo/widget/AmigoSmartPopupLayout;
.super Lamigo/widget/AmigoSmartLayout;
.source "AmigoSmartPopupLayout.java"


# static fields
.field public static USER_DEGREE:Ljava/lang/String;


# instance fields
.field private TIME_INTERNAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "user_popup_degree"

    sput-object v0, Lamigo/widget/AmigoSmartPopupLayout;->USER_DEGREE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lamigo/widget/AmigoSmartLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->TIME_INTERNAL:J

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoSmartLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->TIME_INTERNAL:J

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSmartPopupLayout;->setVisibility(I)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mGoneTime:J

    .line 40
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGoneTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lamigo/widget/AmigoSmartPopupLayout;->mGoneTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lamigo/widget/AmigoSmartPopupLayout;->processUserDegree()V

    .line 42
    invoke-super {p0, p1}, Lamigo/widget/AmigoSmartLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getUserDegree()I
    .locals 5

    .prologue
    .line 64
    const/16 v1, 0x1e

    .line 66
    .local v1, "userDegree":I
    :try_start_0
    iget-object v2, p0, Lamigo/widget/AmigoSmartPopupLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lamigo/widget/AmigoSmartPopupLayout;->USER_DEGREE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lamigo/widget/AmigoSmartPopupLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lamigo/widget/AmigoSmartPopupLayout;->USER_DEGREE:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected processUserDegree()V
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mGoneTime:J

    iget-wide v2, p0, Lamigo/widget/AmigoSmartPopupLayout;->mVisibleTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lamigo/widget/AmigoSmartPopupLayout;->TIME_INTERNAL:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 48
    iget v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartPopupLayout;->mSmartLayoutDegree:I

    rsub-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    .line 49
    iget v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    if-gez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    .line 58
    :cond_0
    :goto_0
    iget v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSmartPopupLayout;->saveUserDegree(I)Z

    .line 59
    return-void

    .line 53
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    iget v1, p0, Lamigo/widget/AmigoSmartPopupLayout;->mSmartLayoutDegree:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    .line 54
    iget v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 55
    const/16 v0, 0x63

    iput v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mUserDegree:I

    goto :goto_0
.end method

.method protected saveUserDegree(I)Z
    .locals 2
    .param p1, "userDegree"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lamigo/widget/AmigoSmartPopupLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lamigo/widget/AmigoSmartPopupLayout;->USER_DEGREE:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
