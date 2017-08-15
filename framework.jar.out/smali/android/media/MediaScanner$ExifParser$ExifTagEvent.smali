.class Landroid/media/MediaScanner$ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner$ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field final isRequested:Z

.field final tag:Landroid/media/MediaScanner$ExifTag;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner$ExifTag;Z)V
    .locals 0
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;
    .param p2, "isRequireByUser"    # Z

    .prologue
    .line 3807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3808
    iput-object p1, p0, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;->tag:Landroid/media/MediaScanner$ExifTag;

    .line 3809
    iput-boolean p2, p0, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;->isRequested:Z

    .line 3810
    return-void
.end method
