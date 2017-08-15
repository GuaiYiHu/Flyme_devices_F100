.class public Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "AmigoExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

.field public position:Lamigo/widget/AmigoExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    return-void
.end method

.method private static getRecycledOrCreate()Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 1143
    sget-object v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1144
    :try_start_0
    sget-object v1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1145
    sget-object v1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .line 1149
    .local v0, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-direct {v0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->resetState()V

    .line 1151
    .end local v0    # "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 1147
    :cond_0
    :try_start_1
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .prologue
    .line 1134
    invoke-static {}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1135
    .local v0, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lamigo/widget/AmigoExpandableListPosition;->obtain(IIII)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    .line 1136
    iput-object p4, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 1137
    iput p5, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1138
    return-object v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1118
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 1120
    iput-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    .line 1122
    :cond_0
    iput-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 1123
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1124
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1155
    invoke-direct {p0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->resetState()V

    .line 1156
    sget-object v1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1157
    :try_start_0
    sget-object v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1158
    sget-object v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_0
    monitor-exit v1

    .line 1161
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
