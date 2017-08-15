.class Landroid/media/MediaScanner$ExifInvalidFormatException;
.super Ljava/lang/Exception;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifInvalidFormatException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "meg"    # Ljava/lang/String;

    .prologue
    .line 3984
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3985
    return-void
.end method
