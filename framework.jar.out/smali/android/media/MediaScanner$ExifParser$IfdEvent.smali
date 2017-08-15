.class Landroid/media/MediaScanner$ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner$ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field final ifd:I

.field final isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "ifd"    # I
    .param p2, "isInterestedIfd"    # Z

    .prologue
    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3798
    iput p1, p0, Landroid/media/MediaScanner$ExifParser$IfdEvent;->ifd:I

    .line 3799
    iput-boolean p2, p0, Landroid/media/MediaScanner$ExifParser$IfdEvent;->isRequested:Z

    .line 3800
    return-void
.end method
