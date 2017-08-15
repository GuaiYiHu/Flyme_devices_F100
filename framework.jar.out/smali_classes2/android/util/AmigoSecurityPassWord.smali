.class public Landroid/util/AmigoSecurityPassWord;
.super Ljava/lang/Object;
.source "AmigoSecurityPassWord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoSecurityPassWord"

.field private static mContext:Landroid/content/Context;

.field private static mLockPatt:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Landroid/util/AmigoSecurityPassWord;->mContext:Landroid/content/Context;

    .line 14
    sput-object v0, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSecurityPasswordEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 17
    sget-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_0

    .line 18
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    :cond_0
    sget-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_1

    .line 22
    const-string v1, "AmigoSecurityPassWord"

    const-string v2, "mLockPatt == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return v0

    .line 26
    :cond_1
    sget-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    sget-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    sget-object v2, Landroid/util/AmigoSecurityPassWord;->mLockPatt:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    const-string v1, "AmigoSecurityPassWord"

    const-string v2, "checkPattern  is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 35
    goto :goto_0

    .line 39
    :cond_4
    const-string v1, "AmigoSecurityPassWord"

    const-string v2, "isSecurityPasswordEnable  =  false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
