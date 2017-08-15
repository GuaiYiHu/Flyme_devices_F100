.class Landroid/media/MediaScanner$ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner$ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field final stripIndex:I

.field final type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 3782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3783
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner$ExifParser$ImageEvent;->stripIndex:I

    .line 3784
    iput p1, p0, Landroid/media/MediaScanner$ExifParser$ImageEvent;->type:I

    .line 3785
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stripIndex"    # I

    .prologue
    .line 3787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3788
    iput p1, p0, Landroid/media/MediaScanner$ExifParser$ImageEvent;->type:I

    .line 3789
    iput p2, p0, Landroid/media/MediaScanner$ExifParser$ImageEvent;->stripIndex:I

    .line 3790
    return-void
.end method
