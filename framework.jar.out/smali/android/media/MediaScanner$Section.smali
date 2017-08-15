.class Landroid/media/MediaScanner$Section;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field public mIsXmpMain:Z

.field public mLength:I

.field public mMarker:I

.field public mOffset:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # I

    .prologue
    .line 2739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    iput p1, p0, Landroid/media/MediaScanner$Section;->mMarker:I

    .line 2741
    iput-wide p2, p0, Landroid/media/MediaScanner$Section;->mOffset:J

    .line 2742
    iput p4, p0, Landroid/media/MediaScanner$Section;->mLength:I

    .line 2743
    return-void
.end method
