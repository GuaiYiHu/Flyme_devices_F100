.class Lamigo/widget/blur/AmigoBlur$BlurType;
.super Ljava/lang/Object;
.source "AmigoBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/blur/AmigoBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlurType"
.end annotation


# static fields
.field public static final CV_BILATERAL:I = 0x4

.field public static final CV_BLUR:I = 0x1

.field public static final CV_BLUR_NO_SCALE:I = 0x0

.field public static final CV_GAUSSIAN:I = 0x2

.field public static final CV_MEDIAN:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
