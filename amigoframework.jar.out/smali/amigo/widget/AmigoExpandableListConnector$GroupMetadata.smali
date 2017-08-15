.class Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "AmigoExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1068
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    return-void
.end method

.method static obtain(IIIJ)Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .locals 1
    .param p0, "flPos"    # I
    .param p1, "lastChildFlPos"    # I
    .param p2, "gPos"    # I
    .param p3, "gId"    # J

    .prologue
    .line 1041
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;-><init>()V

    .line 1042
    .local v0, "gm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iput p0, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    .line 1043
    iput p1, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 1044
    iput p2, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    .line 1045
    iput-wide p3, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gId:J

    .line 1046
    return-object v0
.end method


# virtual methods
.method public compareTo(Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;)I
    .locals 2
    .param p1, "another"    # Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1054
    :cond_0
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1013
    check-cast p1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->compareTo(Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1062
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    iget-wide v0, p0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1066
    return-void
.end method
