.class Lcom/android/server/am/ActivityManagerService$UsageCountComparator;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageCountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 22869
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UsageCountComparator;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .prologue
    .line 22869
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UsageCountComparator;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 2
    .param p1, "a"    # Landroid/app/usage/UsageStats;
    .param p2, "b"    # Landroid/app/usage/UsageStats;

    .prologue
    .line 22872
    iget v0, p2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 22869
    check-cast p1, Landroid/app/usage/UsageStats;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/usage/UsageStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$UsageCountComparator;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result v0

    return v0
.end method
