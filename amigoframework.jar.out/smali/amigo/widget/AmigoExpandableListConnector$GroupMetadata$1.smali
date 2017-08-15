.class final Lamigo/widget/AmigoExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "AmigoExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 1077
    .local v0, "gm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1081
    new-array v0, p1, [Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata$1;->newArray(I)[Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method
