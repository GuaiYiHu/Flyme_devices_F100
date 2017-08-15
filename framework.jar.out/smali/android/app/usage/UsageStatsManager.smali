.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# static fields
.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_COUNT:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field private static final sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCtmFlag:Z

.field private mCtmName:Ljava/lang/String;

.field private final mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/usage/IUsageStatsManager;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageStatsManager;->mCtmName:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 111
    const-string v0, "1"

    const-string/jumbo v1, "ro.mtk_ctm_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/usage/UsageStatsManager;->mCtmFlag:Z

    .line 113
    return-void
.end method

.method private getCtmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mCtmName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 118
    const-class v1, Lcom/mediatek/common/ctm/ICtmExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/ctm/ICtmExt;

    .line 119
    .local v0, "ctm":Lcom/mediatek/common/ctm/ICtmExt;
    if-nez v0, :cond_0

    .line 120
    const-string v1, "getCtmName"

    const-string v2, "Failed to get CTM plugin"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/app/usage/UsageStatsManager;->mCtmName:Ljava/lang/String;

    .line 124
    .end local v0    # "ctm":Lcom/mediatek/common/ctm/ICtmExt;
    :cond_1
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mCtmName:Ljava/lang/String;

    return-object v1

    .line 122
    .restart local v0    # "ctm":Lcom/mediatek/common/ctm/ICtmExt;
    :cond_2
    invoke-interface {v0}, Lcom/mediatek/common/ctm/ICtmExt;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .locals 13
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .line 243
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 258
    :cond_0
    return-object v6

    .line 247
    :cond_1
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 248
    .local v6, "aggregatedStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 249
    .local v10, "statCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 250
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 251
    .local v9, "newStat":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 252
    .local v7, "existingStat":Landroid/app/usage/UsageStats;
    if-nez v7, :cond_2

    .line 253
    iget-object v0, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v7, v9}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    goto :goto_1
.end method

.method public queryConfigurations(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 198
    .local v7, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v7, :cond_0

    .line 199
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    .end local v7    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 7
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, "iter":Landroid/app/usage/UsageEvents;
    if-eqz v0, :cond_0

    .line 228
    .end local v0    # "iter":Landroid/app/usage/UsageEvents;
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 228
    :cond_0
    sget-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    goto :goto_0
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .locals 12
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 161
    .local v10, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    if-eqz v10, :cond_1

    .line 163
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManager;->getCtmName()Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "ctmName":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/app/usage/UsageStatsManager;->mCtmFlag:Z

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    .line 165
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v9, "list":Ljava/util/List;
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    .line 167
    .local v11, "us":Landroid/app/usage/UsageStats;
    iget-object v0, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v7    # "ctmName":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "list":Ljava/util/List;
    .end local v10    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    .end local v11    # "us":Landroid/app/usage/UsageStats;
    :catch_0
    move-exception v0

    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :cond_2
    :goto_1
    return-object v9

    .line 174
    .restart local v7    # "ctmName":Ljava/lang/String;
    .restart local v10    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method
