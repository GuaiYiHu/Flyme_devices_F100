.class Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;
.super Ljava/lang/Object;
.source "AmigoAlarmAlign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AmigoAlarmAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmigoAlarm"
.end annotation


# instance fields
.field public count:I

.field public operation:Landroid/app/PendingIntent;

.field public repeatInterval:J

.field public type:I

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-wide v0, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 486
    iput-wide v0, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->repeatInterval:J

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    .line 488
    return-void
.end method

.method public constructor <init>(IIJJLandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "iType"    # I
    .param p2, "iCount"    # I
    .param p3, "lWhen"    # J
    .param p5, "iRepeatInterval"    # J
    .param p7, "pOperation"    # Landroid/app/PendingIntent;

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput p1, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->type:I

    .line 493
    iput p2, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->count:I

    .line 494
    iput-wide p3, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->when:J

    .line 495
    iput-wide p5, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->repeatInterval:J

    .line 496
    iput-object p7, p0, Lcom/android/server/AmigoAlarmAlign$AmigoAlarm;->operation:Landroid/app/PendingIntent;

    .line 497
    return-void
.end method
